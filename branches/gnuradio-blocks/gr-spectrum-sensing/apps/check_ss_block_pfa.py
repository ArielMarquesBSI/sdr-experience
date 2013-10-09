#!/usr/bin/env python
##################################################
# Gnuradio Python Flow Graph
# Title: Pfa vs. Noise power
# Generated: Wed Jan  9 19:24:29 2013
##################################################

import math
import numpy
import pylab
import random
from gnuradio import eng_notation
from gnuradio import fft
from gnuradio import gr
from gnuradio import window
from gnuradio.eng_option import eng_option
from gnuradio.gr import firdes
from grc_gnuradio import wxgui as grc_wxgui
from optparse import OptionParser
import howto
import wx
import matplotlib.pyplot as plt

class PfaVsNoisePowerSimu(gr.top_block):
   " This contains the simulation flow graph "
   def __init__(self, dBm, pfa, pfd, useless_bw, plot_histogram):
      gr.top_block.__init__(self)

      # Constants
      samp_rate = 2.4e6
      samples_per_band = 16
      tcme = 1.9528
      output_pfa = True
      debug_stats = False
      self.histogram = plot_histogram
      primary_user_location = 5
      mu = 0
      fft_size = 4096
      nframes_to_check = 1
      nframes_to_average = 1
      downconverter = 1

      src_data = self.generateRandomSignalSource(dBm, fft_size, mu, nframes_to_check*nframes_to_average)

		# Blocks
      src = gr.vector_source_c(src_data)
      s2v = gr.stream_to_vector(gr.sizeof_gr_complex, fft_size)
      fftb = fft.fft_vcc(fft_size, True, (window.blackmanharris(1024)), False, 1)
      self.ss = howto.spectrum_sensing_cf(samp_rate,fft_size,samples_per_band,pfd,pfa,tcme,output_pfa,debug_stats,primary_user_location,useless_bw,self.histogram,nframes_to_check,nframes_to_average,downconverter)
      self.sink = gr.vector_sink_f()

		# Connections
      self.connect(src, s2v, fftb, self.ss, self.sink)

   def convertFromPowerToStdDev(self, dBm):
      """ Convert noise power from dBm to standard deviation in voltage """ 
      variance = 10**((dBm - 30)/10)
      return math.sqrt(variance/2)

   def generateRandomSignalSource(self, dBm, fft_size, mu, decimation):
      std_dev = self.convertFromPowerToStdDev(dBm)
      src_data = []
      for j in range(1,(decimation*fft_size)+1):
         src_data = src_data + [random.gauss(mu, std_dev) + random.gauss(mu, std_dev)*1j]
      return src_data

   def getHistogram(self,pos):
      return self.ss.get_histogram(pos)

   def getNumberOfSubBands(self):
      return self.ss.getNumberOfSubBands()

   def get_debug_histogram(self):
      return self.ss.debug_histogram()

   def plot_histogram(self):
      return self.histogram

def simulate_pfa(dBm, pfa, pfd, useless_bw, plot_histogram, nTrials):
   """ All the work's done here: create flow graph, run and read out Pfa """
   false_alarm_rate = 0.0
   maxNumberOfSubBands = 256
   histograma = [0]*maxNumberOfSubBands
   nSubBands = 0
   print "Noise Power = %f dBm" % dBm
   for j in range(1,nTrials+1):
      fg = PfaVsNoisePowerSimu(dBm, pfa, pfd, useless_bw, plot_histogram)
      fg.run()
      false_alarm_rate = false_alarm_rate + fg.sink.data()[0]
      if plot_histogram == True:
         nSubBands = fg.getNumberOfSubBands()
         for i in range(0,nSubBands):
            histograma[i] = fg.getHistogram(i) + histograma[i]
   if plot_histogram == True: plotHistogram(histograma, nSubBands)
   return false_alarm_rate/nTrials

def plotHistogram(histograma, nSubBands):
   plt.stem(range(0,nSubBands), histograma[0:nSubBands])
   plt.ylabel('Number of FA in a given sub-band')
   plt.xlabel('sub-band')
   plt.show()

if __name__ == "__main__":
   pfa = 0.0001
   pfd = 0.001
   useless_bw = 400000.0
   dBm = 0
   nTrials = 200
   plot_histogram = True
   false_alarm_rate = simulate_pfa(dBm, pfa, pfd, useless_bw, plot_histogram, nTrials)
   print false_alarm_rate


