    <?php $video_source = 'upload';?>
<style>
.tab-content {
    margin-left: 10px;
    margin-right: 10px;
    margin-top: 10px;
}
</style>
<div class="card">
  <div class="row justify-content-md-center">
    <div class="col-md-6">
      <a class="btn btn-sm btn-primary waves-effect mb-20" href="<?php echo base_url('admin/seasons_manage/') . $episode_info->videos_id; ?>"> <span class="btn-label"><i class="fa fa-arrow-left"></i></span>Back to Years</a>
      <a class="btn btn-sm btn-primary waves-effect mb-20" href="<?php echo base_url('admin/episodes_manage/') . $episode_info->videos_id.'/'.$episode_info->seasons_id; ?>"> <span class="btn-label"><i class="fa fa-arrow-left"></i></span>Back to Add VIDEO/POSTER</a>
<br><br>
      <div class="panel panel-border panel-primary">
        <div class="panel-heading">
          <h3 class="panel-title">Edit <?php echo $episode_info->episodes_name3 ?></h3>
        </div>
        <div class="panel-body">
   
        <div class="tab-content">
          <div class="tab-pane active" id="tabs-1" role="tabpanel">
            <?php echo form_open_multipart(base_url('admin/episodes_update/'.$episode_info->episodes_id)); ?>
           <input type="hidden" name="videos_id" value="<?php echo $episode_info->videos_id; ?>">
              <input type="hidden" name="seasons_id" value="<?php echo $episode_info->seasons_id; ?>">
              <input type="hidden" name="episodes_id" value="<?php echo $episode_info->episodes_id; ?>">
              
              
              
              
              
              <div class="form-group">
                <label class="control-label">Poster Name</label>&nbsp;&nbsp;<input id="episodes_name" type="text" value="<?php echo $episode_info->episodes_name; ?>" name="episodes_name" class="form-control" placeholder="Episode-1" required="">
              </div>
              
              
                
                
              <div class="form-group">
                  <label class="control-label" for="cars">Language</label>
                <select  class="form-control" id="episodes_name1" name="episodes_name1">
                    <option value="English">English</option>
                    <option value="Gujarati">Gujarati</option>
                    <option value="Hindi">Hindi</option>
                 </select>
                </div>
                
                <div class="form-group" id="postervideo" style="display:none;" >
                  <label class="control-label" for="cars">Poster or Video</label>
                <select  class="form-control" id="episodes_name3" name="episodes_name3">
                    <option value="Poster" <?php if($episode_info->episodes_name3 =='Poster'): echo 'selected'; endif;?>  >Poster</option>
                    <option value="Video" <?php if($episode_info->episodes_name3 =='Video'): echo 'selected'; endif;?> >Video</option>
                 </select>
                </div>
                
                <div class="form-group" id="paidfree">
                <label class="control-label">Paid/Free</label>
                <select  class="form-control" id="episodes_name2" name="episodes_name2">
                    <option value="Paid" <?php if($episode_info->episodes_name2 =='Paid'): echo 'selected'; endif;?> >Paid</option>
                    <option value="Free" <?php if($episode_info->episodes_name2 =='Free'): echo 'selected'; endif;?> >Free</option>
                 </select>
                <!--<input type="text" name="url" id="url-input-field" class="form-control" value="<?php echo $episode_info->file_url; ?>" placeholder="http://server-2.com/template/video.mp4" <?php if($episode_info->file_source !='upload'): echo 'required'; endif;?> ><br>-->
              </div>
                
             <div class="form-group">
                <label class="control-label"><?php echo trans('order'); ?></label>
                <input type="number" name="order" class="form-control" value="<?php echo $episode_info->order; ?>" placeholder="0 to 9999" >
              </div>
              
              <!--image-->
             <div class="form-group" id="Poster" <?php if($episode_info->episodes_name3 =='Video'): echo 'style="display:none;"'; endif;?>>
                <label class="control-label">Select Poster</label><br>
                <img class="img img-thumbnail" src="<?php echo $this->common_model->get_episode_image_url($episode_info->videos_id,$episode_info->episodes_id).'?'.time(); ?>" alt="<?php echo $episode_info->episodes_name; ?>" width="150"><br>
                  <input class="imageselect" name="thumbnail" type="file" accept="image/*" />
              </div>
              
              <!--video-->
              <div class="form-group" id="video" <?php if($episode_info->episodes_name3 =='Poster'): echo 'style="display:none;"'; endif;?> >
                <label class="control-label" style="display:none;">Video Source</label>
                <select class="form-control" name="source" id="selected-source" style="display:none;">
                  <option value="upload" <?php if($episode_info->source_type =='upload'): echo 'selected'; endif;?>>Upload Video</option>
                  <option value="link" <?php if($episode_info->source_type =='link'): echo 'selected'; endif;?>>Video URL</option>
                </select>
                <!--</br>-->
                
                <div class="form-group" id="poster2">
                <label class="control-label">Select Thumbnail</label><br>
                <img class="img img-thumbnail" src="<?php echo $this->common_model->get_episode_image_url($episode_info->videos_id,$episode_info->episodes_id).'?'.time(); ?>" alt="<?php echo $episode_info->episodes_name; ?>" width="150"><br>
                  <input class="imageselect" id="thumbnail2" name="thumbnail2" type="file" accept="image/*" />
              </div>
              <!--  <div class="form-group" <?php if($video_source != 'upload'): echo 'style="display:none;"'; endif;?> id="url-input">-->
              <!--  <label class="control-label">Video URL</label>-->
              <!--  <input type="text" name="url" id="url-input-field" value="<?php if($episode_info->episodes_name3 =='Video'): echo $episode_info->file_url; else: echo "N/A"; endif;?>" class="form-control" placeholder="http://server-2.com/templates/diwali.mp4" <?php if($episode_info->source_type =='link' && $episode_info->episodes_name3 =='Video'): echo 'required'; endif;?> ><br>-->
              <!--</div>-->
                <!--<center><label class="control-label"><?php echo trans('or'); ?></label></center>-->
              <div class="form-group" <?php if($video_source != 'upload'): echo 'style="display:none;"'; endif;?> id="image-input">
                <label class="control-label"><?php echo trans('selected_video  : '); ?><span class="text-danger"> <?php if($episode_info->episodes_name3 =='Video' && $episode_info->source_type =='upload'): echo  basename($episode_info->file_url); else: echo "N/A"; endif;?></span></label>
                <input class="videoselect" name="videofile" id="image-input-field" type="file" accept="video/*"  />
              </div>
              
              
              </div>
              
            
          </div>
              <div class="form-group">
                <button class="btn btn-sm btn-primary waves-effect" type="submit"> <span class="btn-label"><i class="fa fa-plus"></i></span><?php echo trans('save_changes') ?> </button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>

    <script src="<?php echo base_url() ?>assets/plugins/bootstrap-filestyle/src/bootstrap-filestyle.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="<?php echo base_url() ?>assets/plugins/parsleyjs/dist/parsley.min.js"></script>
    <script>
      jQuery(document).ready(function() {
          $('form').parsley();
          $(".imageselect").filestyle({
              input: true,
              icon: true,
              buttonBefore: true,
              text: "<?php echo trans('select_image'); ?>",
              htmlIcon: '<span class="fa fa-file-image-o"></span>',
              badge: true,
              badgeName: "badge-danger"
          });
          $(".videoselect").filestyle({
              input: true,
              icon: true,
              buttonBefore: true,
              text: "<?php echo trans('select_video'); ?>",
              htmlIcon: '<span class="fa fa-file-video-o"></span>',
              badge: true,
              badgeName: "badge-danger"
          });

        //   $( "#selected-source" ).change(function() {
        //      var source = $("#selected-source option:selected" ).val();
        //      if(source == 'upload'){
        //       $("#image-input").show('slow');
        //       $("#url-input").hide('slow');
        //       $("#image-input-field").attr("required", true);
        //       $("#url-input-field").attr("required", false);
        //      }else{
        //       $("#image-input").hide('slow');
        //       $("#url-input").show('slow');
        //       $("#image-input-field").attr("required", false);
        //       $("#url-input-field").attr("required", true);
        //      }
        //   });
      });
    </script>
     <script>
  jQuery(document).ready(function() {
    $('#episodes_name3').on('change', function() {
      if( this.value == 'Poster'){
        $("#poster").show();
        $("#video").hide();
        $("#image-input-field").attr("required", false);
        $("#url-input-field").attr("required", false);
        $("#thumbnail").attr("required", true);
        $("#thumbnail2").attr("required", false);
      }
      else if(this.value == 'Video'){
        $("#poster").hide();
        $("#video").show();
        $("#thumbnail").attr("required", false);
        $("#thumbnail2").attr("required", true);
        $("#url-input-field").attr("required", false);
        $( "#selected-source" ).change(function() {
             var source = $("#selected-source option:selected" ).val();
             if(source == 'upload'){
               $("#image-input").show('slow');
               $("#url-input").hide('slow');
               $("#image-input-field").attr("required", false);
               $("#url-input-field").attr("required", false);
             }else{
               $("#image-input").hide('slow');
               $("#url-input").show('slow');
               $("#image-input-field").attr("required", false);
               $("#url-input-field").attr("required", true);
             }
          });
      }
    });

    $('form').parsley(); 
  });
</script>
  