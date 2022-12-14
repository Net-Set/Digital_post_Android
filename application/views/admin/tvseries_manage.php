<style type="text/css">
  .select2-container--open .select2-dropdown--below {
      margin-top: 0px;
  }
  .select2-container .select2-selection--single {
    height: 36px;
  }
  .select2-container--default .select2-selection--single .select2-selection__rendered {
    line-height: 32px;
}
</style>

<div class="row card">
  <div class="col-sm-12">
    <div class="row">
      <div class="col-md-3">
        <a href="<?php echo base_url() . 'admin/sub_category_add';?>" class="btn btn-sm btn-primary waves-effect waves-light"><span class="btn-label"><i class="fa fa-plus"></i></span>Add Sub-Category</a> <br>
      <br>
      </div>
      <div class="col-md-9">
      <form class="form-inline pull-right" method="get" action="<?php echo base_url('admin/tvseries') ?>">
         
         
          <div class="form-group mx-sm-3 mb-2" style="display:none;">
            <label for="title" class="sr-only">Title</label>
            <input type="text" name="title" value="<?php if(isset($title)){ echo $title;} ?>" class="form-control" id="title" placeholder="Title">
          </div>
          <div class="form-group mx-sm-3 mb-2" style="display:none;">
            <label for="release" class="sr-only">Release</label>
            <select class="form-control select2 " name="release" id="release">
              <option value="">All Release</option>
              <?php $current_year = date("Y");
                $end_year = $current_year - 200;
                for($i=$current_year;$i>$end_year;$i--): 
              ?>
              <option value="<?php echo $i; ?>" <?php if(isset($release) && $release ==$i){ echo 'selected';} ?>><?php echo $i; ?></option>
              <?php endfor; ?>
            </select>
          </div>
          <div class="form-group mx-sm-3 mb-2" style="display:none;">
            <label for="release" class="sr-only">Publication</label>
            <select class="form-control select2" name="publication" id="publication">
              <option value="">All</option>
              <option value="1" <?php if(isset($publication) && $publication =='1'){ echo 'selected';} ?>>Published</option>
              <option value="0" <?php if(isset($publication) && $publication =='0'){ echo 'selected';} ?>>Unpublished</option>
            </select>
          </div>
   <!--<button type="submit" class="btn btn-primary mb-2"><span class="btn-label"><i class="fa fa-search"></i></span>Search</button>-->
        </form>
        </div>
      </div>
    </div>          
      <?php if(count($this->db->get('videos')->result_array())>0): ?>
      <table class="table table-striped" id="datatablessd">
        <thead>
          <tr>
            <th>#</th>
            <th>###</th>
            <th>Thumbnail</th>
            <th>Name</th>
            <th>Description</th>
            <th>TotalYears</th>
            <th>Status</th>
          </tr>
        </thead>
        <tbody>
          <?php $sl = 1;
            if($last_row_num)
            $sl = $last_row_num + 1;
            foreach ($videos as $videos):
          ?>
          <tr id='row_<?php echo $videos['videos_id'];?>'>
            <td><?php echo $sl++;?></td>
            <td>
              <div class="btn-group">
                <button type="button" class="btn btn-white btn-sm dropdown-toggle waves-effect waves-light" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-h" aria-hidden="true"></i></button>
                <ul class="dropdown-menu" role="menu">
                  <li><a class="dropdown-item" href="<?php echo base_url() . 'admin/seasons_manage/'. $videos['videos_id'];?>">Years &amp; Posters</a></li>
                  <li><a class="dropdown-item" href="<?php echo base_url() . 'admin/tvseries_edit/'. $videos['videos_id'];?>">Edit Sub-Categories</a></li>
                  <li><a class="dropdown-item" title="Delete" href="#" onclick="delete_row(<?php echo " 'videos' ".','.$videos['videos_id'];?>)" class="delete">Delete</a> </li>
                  <li><a class="dropdown-item" href="#" data-toggle="modal" data-target="#mymodal" data-id="<?php echo base_url() . 'admin/view_modal/movie_notification/'. $videos['videos_id'];?>" id="menu">Send Push Notification</a></li>
                  <!--<li><a class="dropdown-item" href="<?php echo base_url() . 'admin/send_movie_notification/email/'. $videos['videos_id'].'/tv';?>">Send Email Newslater</a></li>-->
                </ul>
              </div>
            </td>
            <td><img src="<?php echo $this->common_model->get_video_thumb_url($videos['videos_id']);?>" class="img-fluid" style="max-width: 185"></td>
            <td><strong><?php echo $videos['title'];?></strong></td>
            <td><?php echo $videos['description'];?></td>
            <td>
              <?php
                echo count($this->db->get_where('seasons', array('videos_id'=>$videos['videos_id']))->result_array());
              ?> Years                                             
            </td>
            <td>
              <?php
                if($videos['publication']=='1'){
                    echo '<span class="label label-primary label-xs">Published</span>';
                }
                else{
                    echo '<span class="label label-warning label-mini">Unublished</span>';
                }
              ?>
            </td>
          </tr>
          <?php endforeach;?>
        </tbody>
      </table>
    <?php else: ?>
      <div class="text-center"><h2>No Sub-category found..</h2></div>
    <?php endif; ?>
      <?php echo $links; ?>
      
  </div>
<script src="<?php echo base_url() ?>assets/plugins/select2/dist/js/select2.min.js" type="text/javascript"></script>
<script src="<?php echo base_url() ?>assets/plugins/summernote/dist/summernote.min.js"></script>

<script type="text/javascript">
jQuery(document).ready(function() {
  $(".select2").select2();
});
</script>



