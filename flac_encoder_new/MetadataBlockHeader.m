function y= MetadataBlockHeader(block_type,length_meta)
%block_type = BLOCK_TYPE_STREAMINFO =0
%length of meta_data_stream_info
bits = [];

        bits = [bits,'1'];
        bits = [bits,dec2bin(block_type, 7)];
        bits = [bits,dec2bin(floor(length_meta/8), 24)];
        
        y=bits;%output size = 32 bits
end