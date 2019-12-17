# -*- coding: utf-8 -*-
# usage: myqrcode [URL] [file.svg]

require 'rqrcode'

FILE_NAME = ARGV[1] ? ARGV[1] : "images/qrcode.svg"
URL = ARGV[0] ? ARGV[0] : "https://jmbruel.github.io/smartjmb/"

qrcode = RQRCode::QRCode.new(URL)

# NOTE: showing with default options specified explicitly
svg = qrcode.as_svg(
  offset: 0,
  color: '000',
  shape_rendering: 'crispEdges',
  module_size: 6,
  standalone: true
)

# Writing output file
destfile = File.new(FILE_NAME,"a")
destfile.write(svg)
destfile.close()
