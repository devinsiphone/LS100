# Rewrite your Table of Contents program (from the chapter on methods). Start
# the program with an array holding all of the information for your Table of
# Contents (chapter names, page numbers, etc.). Then print out the information
# from the array in a beautifully formatted Table of Contents.
#                Table of Contents
#
# Chapter 1:  Numbers                        page 1
# Chapter 2:  Letters                       page 72
# Chapter 3:  Variables                    page 118
lineWidth = 49
# puts strchap1.ljust(lineWidth/2) + strpage1.rjust(lineWidth/2)
# puts strchap2.ljust(lineWidth/2) + strpage2.rjust(lineWidth/2)
# puts strchap3.ljust(lineWidth/2) + strpage3.rjust(lineWidth/2)

content = ['Table of Contents', 'Chapter 1:  Numbers', 'Chapter 2:  Letters',
'Chapter 3:  Variables', 'page 1', 'page 72', 'page 118']
puts content[0].center(lineWidth)
puts
puts content[1].ljust(lineWidth/2) + content[4].rjust(lineWidth/2)
puts content[2].ljust(lineWidth/2) + content[5].rjust(lineWidth/2)
puts content[3].ljust(lineWidth/2) + content[6].rjust(lineWidth/2)
