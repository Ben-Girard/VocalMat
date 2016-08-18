function strctBackground= ...
  fnStrctBackgroundFromParts(a2fBackground, ...
                             a2bFloor, ...
                             a2strctGTTuningEllipses, ...
                             iGTTuningFrame, ...
                             strctSegParams)

% Takes all the data that goes into a background-floor-segmentation-params
% struct, and puts it into such a struct.  Output produced by this function
% should work in place of a "strctBackground" variable used
% by Repository/MouseHouse.
                            
% Convert segmentation tuning ellipses to Repository format
astrctTuningEllipses= ...
  fnConvertSegmentationGTToRepositoryFormat(a2strctGTTuningEllipses, ...
                                            iGTTuningFrame);
strctBackground=struct('m_a2fMedian',a2fBackground, ...
                       'm_a2bFloor',a2bFloor, ...
                       'm_astrctTuningEllipses',astrctTuningEllipses, ...
                       'm_strctSegParams',strctSegParams, ...
                       'm_strMethod','FrameDiff_v7');

end