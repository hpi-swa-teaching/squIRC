export
exportSAR
|packages zip mczStream workingCopy version installActions|

	packages := {'Network-IRC-Model' . 'Network-IRC-GUI' . 'Network-IRC-Tests'}.
	zip := ZipArchive new.
	installActions := ''.
	
	packages do: [:package |
					mczStream := RWBinaryOrTextStream on: (String new: 10000).
					workingCopy := MCWorkingCopy forPackage: (MCPackage new name: package).
					version := workingCopy newVersion fileOutOn: mczStream.
					(zip addString: mczStream contents as: package, '.mcz') desiredCompressionLevel: 0.
					installActions := installActions , 'self fileInMonticelloZipVersionNamed: ''' , package , '.mcz''. '].
				
	zip addString: installActions as: 'install/preamble'.
	zip writeToFileNamed: 'squIRC.sar'.