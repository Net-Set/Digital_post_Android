<style type="text/css">
    .p-a{
        padding: 10px;
    }
    .bootstrap-tagsinput .badge {;
        background-color: #009688;
        border: 1px solid #035d54;
    }
    button.close {
        padding: 0px;
    }
</style>

<?php 
    $videos   = $this->db->get_where('videos' , array('videos_id' => $param1) )->result_array();
    foreach ( $videos as $video):
        $actors     = explode(",", $video['stars']);
        $directors  = explode(",", $video['director']);
        $writers    = explode(",", $video['writer']);
    echo form_open(base_url() . 'admin/tvseries/update/'.$param1, array('class' => 'form-horizontal group-border-dashed', 'enctype' => 'multipart/form-data'));
?>
<div class="row">
    <div class="col-md-6">
        <div class="card cta cta--featured p-a">
          <div class="card-block">
            <h3 class="card-title no-margin-top">Sub-Category Info</h3>
          </div>
          <span class="header-line"></span>
          <div class="card-block">
            <input type="hidden" name="imdbid" id="imdbid">
            <div class="form-group">
                <label class=" control-label">Title</label>
                <input type="text" name="title" value="<?php echo $video['title'] ?>" id="title" class="form-control" required>
            </div>
            <div class="form-group">
                <label class="control-label">Slug (<?php echo base_url(); ?>)</label>
                <input type="text" id="slug" name="slug" value="<?php echo $video['slug'] ?>" class="form-control input-sm" required>
            </div>
            <div class="form-group">
                <label class="control-label">Description</label>
                <textarea class="wysihtml5 form-control" name="description" id="description" rows="10"><?php echo $video['description'] ?></textarea>
            </div>
         <!--   <div class="form-group">
              <label class="control-label">Actor</label>
              <select class="form-control select2" name="actor[]" multiple="multiple" id="actor">
                <?php foreach ($actors as $actor):?>
                    <option value="<?php echo $actor; ?>" selected><?php echo $this->common_model->get_star_name_by_id($actor); ?></option>
                <?php endforeach; ?>
              </select>
            </div>-->
         <!--   <div class="form-group">
              <label class="control-label">Director</label>
              <select class="form-control select2" name="director[]" multiple="multiple" id="director">
                <?php foreach ($directors as $director):?>
                    <option value="<?php echo $director; ?>" selected><?php echo $this->common_model->get_star_name_by_id($director); ?></option>
                <?php endforeach; ?>
              </select>
            </div>-->
          <!--  <div class="form-group">
              <label class="control-label">Writer</label>
              <select class="form-control select2" name="writer[]" multiple="multiple" id="writer">
                <?php foreach ($writers as $writer):?>
                    <option value="<?php echo $writer; ?>" selected><?php echo $this->common_model->get_star_name_by_id($writer); ?></option>
                <?php endforeach; ?>
              </select>
            </div>-->
            <!--<div class="form-group">
                <label class="control-label">IMDb Rating</label>
                <input type="text" name="rating" value='<?php echo $video['imdb_rating']; ?>' id="rating" class="form-control">
            </div>-->
            <div class="form-group">
                <label class="control-label">Release Date</label>
                <div class="input-group">
                    <input type="text" name="release" id="release_date" class="form-control" value="<?php echo $video['release']; ?>">
                    <span class="input-group-addon bg-custom b-0 text-white"><i class="fa fa-calendar" aria-hidden="true"></i></span> </div>
                <!-- input-group -->
            </div>
          <!--  <div class="form-group">
                <label class="control-label">Country</label>
                <select class="form-control select2" name="country[]" multiple="multiple" id="country">
                    <optgroup label="Select Country">
                      <?php $country = $this->db->get('country')->result_array();
                            foreach ($country as $v_country):?>
                            <option value="<?php echo $v_country['country_id']; ?>" <?php  if(preg_match('/\b'.$v_country['country_id'].'\b/', $video['country'])){ echo "selected";} ?>><?php echo $v_country['name']; ?></option>
                      <?php endforeach; ?>
                </select>
            </div>-->
            <div class="form-group">
              <label class="control-label">Category</label>
              <select class="form-control select2" name="genre[]" multiple="multiple" id="genre">
                <?php $genre = $this->db->get('genre')->result_array();
                      foreach ($genre as $v_genre):?>
                <option value="<?php echo $v_genre['genre_id']; ?>" <?php  if(preg_match('/\b'.$v_genre['genre_id'].'\b/', $video['genre'])){ echo "selected";} ?>><?php echo $v_genre['name']; ?></option>
                      <!--<option value="<?php echo $v_genre['genre_id']; ?>"><?php echo $v_genre['name']; ?></option>-->
                <?php endforeach; ?>
              </select>
            </div>
           <!-- <div class="form-group">
                <label class="control-label">Runtime</label>
                <input type="text" name="runtime" value="<?php echo $video['runtime']; ?>" id="runtime" class="form-control">
            </div>-->
       <!--     <div class="form-group">
              <label class="control-label">Free/Paid</label>
                <select  class="form-control"  name="is_paid">
                  <option value="0"  <?php if($video['is_paid'] =='0'){ echo "selected";} ?>>Free</option>
                  <option value="1" <?php if($video['is_paid'] =='1'){ echo "selected";} ?>>Paid</option>
                </select>
            </div>   -->         
            
              <div class="form-group">
            <label class="control-label">Quality</label>
            <select class="form-control m-bot15" name="video_quality">
              <?php $quality = $this->db->get_where('quality', array('status'=>'1'))->result_array();
                    foreach ($quality as $quality):?>
              <option value="<?php echo $quality['quality'] ?>" <?php if($quality['quality']==$video['video_quality']){ echo 'selected';} ?>><?php echo $quality['quality'] ?></option>
              <?php endforeach; ?>
            </select>
        </div>
            <div class="row">
                <div class="col-sm-6 pull-left">
                    <a href="<?php echo base_url().'admin/tvseries/#'.$param1 ?>" class="link m-l-15 text-left"> Back to list</a>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="col-md-6">
    <div class="card cta cta--featured p-a">
      <div class="card-block">
        <h3 class="card-title no-margin-top">Image, Thumbnail </h3>
      </div>
      <span class="header-line"></span>
      <div class="card-block">
      
        <div class="form-group">
            <label class="control-label">Thumbnail</label>
            <div class="profile-info-name text-center"> <img id="thumb_image" src="<?php echo $this->common_model->get_video_thumb_url($param1).'?'.time(); ?>" width="150" class="img-thumbnail" alt=""> </div>
            <br>
            <div id="thumbnail_content">
                <input type="file" id="thumbnail_file" onchange="showImg(this);" name="thumbnail" class="filestyle" data-input="false" accept="image/*"></div><br>
            <p class="btn btn-white" id="thumb_link" href="#"><span class="btn-label"><i class="fa fa-link"></i></span>
                Link
            </p>
            <p class="btn btn-white" id="thumb_file" href="#"><span class="btn-label"><i class="fa fa-file-o"></i></span>
                File
            </p>

        </div>

        <div class="form-group">
            <label class="control-label">Image</label>
            <div class="profile-info-name text-center"> <img id="poster_image" src="<?php echo $this->common_model->get_video_poster_admin_url($param1).'?'.time(); ?>" width="350" class="img-thumbnail" alt=""> </div>
            <br>
            <div id="poster_content">
                <input type="file" id="poster_file" onchange="showImg2(this);" name="poster_file" class="filestyle" data-input="false" accept="image/*"></div><br>
            <p class="btn btn-white" id="poster_link" href="#"><span class="btn-label"><i class="fa fa-link"></i></span>
                Link
            </p>
            <p class="btn btn-white" id="poster_file_btn" href="#"><span class="btn-label"><i class="fa fa-file-o"></i></span>
                File
            </p>

        </div>

   <!--     <div class="form-group">
            <label class="control-label">Send Email Newslatter to Subscriber</label>
            <div class="toggle">
                <label>
                    <input type="checkbox" name="email_notify"><span class="button-indecator"></span>
                </label>
            </div>
        </div>-->

       <!-- <div class="form-group">
            <label class="control-label">Send Push Notification to Subscriber</label>
            <div class="toggle">
                <label>
                    <input type="checkbox" name="push_notify"><span class="button-indecator"></span>
                </label>
            </div>
        </div>-->

        <div class="form-group">
                <label class="control-label">Publication</label>
                <div class="toggle">
                    <label>
                        <input type="checkbox" name="publication" <?php if($video['publication']=='1'){ echo 'checked';} ?>><span class="button-indecator"></span>
                    </label>
                </div>
            </div>

        <div class="row">            
            <div class="col-sm-6 pull-right">
                <button type="submit" class="btn btn-primary pull-right waves-effect"> <span class="btn-label"><i class="fa fa-floppy-o"></i></span>Save Change</button>
            </div>
        </div>

      </div>
    </div>
</div>

</div>
<?php echo form_close(); ?>
<?php endforeach; ?>

<!-- <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script> -->
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/jquery.form.min.js"></script>
<script>
    jQuery(document).ready(function() {
        //$(".select2").select2();
        $('form').parsley();
        $('#release_date').datepicker({
            format: 'yyyy-mm-dd',
            autoclose: true,
            todayHighlight: true
        });
        $(":file").filestyle({
            input: false
        });
    });
</script>
<!--instant image dispaly-->
<script type="text/javascript">
    function showImg(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function(e) {
                $('#thumb_image')
                    .attr('src', e.target.result)
            };
            reader.readAsDataURL(input.files[0]);
        }
    }
</script>
<script type="text/javascript">
    function showImg2(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function(e) {
                $('#poster_image')
                    .attr('src', e.target.result)
            };
            reader.readAsDataURL(input.files[0]);
        }
    }
</script>
<!--end instant image dispaly-->


<script type="text/javascript" src="<?php echo base_url() ?>assets/plugins/parsleyjs/dist/parsley.min.js"></script>


<script src="<?php echo base_url() ?>assets/plugins/bootstrap-tagsinput/dist/bootstrap-tagsinput.min.js"></script>
<script src="<?php echo base_url() ?>assets/plugins/moment/moment.js"></script>
<script src="<?php echo base_url() ?>assets/plugins/bootstrap-daterangepicker/daterangepicker.js"></script>
<script src="<?php echo base_url() ?>assets/plugins/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<script src="<?php echo base_url() ?>assets/plugins/bootstrap-filestyle/src/bootstrap-filestyle.min.js" type="text/javascript"></script>
<script src="<?php echo base_url() ?>assets/plugins/select2/select2.min.js" type="text/javascript"></script>
<script src="<?php echo base_url() ?>assets/plugins/summernote/dist/summernote.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/date.js"></script>


<script>
    jQuery(document).ready(function() {
        $('#country').select2({
            placeholder: 'Select Country'
        });
        $('#genre').select2({
            placeholder: 'Select Genre'
        });       
        $('#video_type').select2({
            placeholder: 'Select Video Type'
        });       
        $('#focus_keyword').tagsinput();
        $('#tags').tagsinput();
        $('#thumb_link').click(function() {
            $('#thumbnail_content').html('<input type="text" name="thumb_link" class="form-control">');
        });
        $('#thumb_file').click(function() {
            $('#thumbnail_content').html('<input type="file" id="thumbnail_file" onchange="showImg(this);" name="thumbnail" class="filestyle" data-input="false" accept="image/*"></div>');
            $(":file").filestyle({
                input: false
            });
        });

        $('#poster_link').click(function() {
            $('#poster_content').html('<input type="text" name="poster_link" class="form-control">');
        });
        $('#poster_file_btn').click(function() {
            $('#poster_content').html('<input type="file" id="poster_file" onchange="showImg2(this);" name="poster_file" class="filestyle" data-input="false" accept="image/*"></div>');
            $(":file").filestyle({
                input: false
            });
        });

        $('#description').summernote({
            height: 200, // set editor height
            minHeight: null, // set minimum height of editor
            maxHeight: null, // set maximum height of editor
            focus: false // set focus to editable area after initializing summernote
        });
    });
</script>

<script>
    $("#title").keyup(function() {
        var Text = $(this).val();
        Text = Text.toLowerCase();
        Text = Text.replace(/[^\w ]+/g, '');
        Text = Text.replace(/ +/g, '-');
        $("#slug").val(Text);
    });
</script>

<script type="text/javascript">
      $('#actor').select2({
        placeholder: 'Select Actor',
        minimumInputLength: 2,
        ajax: {
          url: '<?=base_url('admin/load_stars')?>',
          dataType: 'json',
          delay: 250,
          processResults: function (data) {
            return {
              results: data
            };
          },
          cache: true
        }
      });
</script>

<script type="text/javascript">
      $('#director').select2({
        placeholder: 'Select Director',
        minimumInputLength: 2,
        ajax: {
          url: '<?=base_url('admin/load_stars')?>',
          dataType: 'json',
          delay: 250,
          processResults: function (data) {
            return {
              results: data
            };
          },
          cache: true
        }
      });
</script>

<script type="text/javascript">
      $('#writer').select2({
        placeholder: 'Select Writer',
        minimumInputLength: 2,
        ajax: {
          url: '<?=base_url('admin/load_stars')?>',
          dataType: 'json',
          delay: 250,
          processResults: function (data) {
            return {
              results: data
            };
          },
          cache: true
        }
      });
</script>





