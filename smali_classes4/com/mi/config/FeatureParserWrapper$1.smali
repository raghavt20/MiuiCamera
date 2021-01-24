.class Lcom/mi/config/FeatureParserWrapper$1;
.super Ljava/util/HashMap;
.source "FeatureParserWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/config/FeatureParserWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "support_screen_light"

    const-string v1, "o_0x00_s_s_l"

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/mi/config/FeatureParserWrapper$1;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "camera_reduce_preview_flag"

    const-string v1, "o_0x01_r_p_s_f"

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/mi/config/FeatureParserWrapper$1;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "vendor"

    const-string v1, "o_0x02_soc_vendor"

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/mi/config/FeatureParserWrapper$1;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "support_3d_face_beauty"

    const-string v1, "o_0x03_support_3d_face_beauty"

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/mi/config/FeatureParserWrapper$1;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "support_mi_face_beauty"

    const-string v1, "o_0x04_support_mi_face_beauty"

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/mi/config/FeatureParserWrapper$1;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "is_support_optical_zoom"

    const-string v1, "o_0x05_is_support_optical_zoom"

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/mi/config/FeatureParserWrapper$1;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "support_camera_peaking_mf"

    const-string v1, "o_0x06_is_support_peaking_mf"

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/mi/config/FeatureParserWrapper$1;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "support_camera_dynamic_light_spot"

    const-string v1, "o_0x08_is_support_dynamic_light_spot"

    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/mi/config/FeatureParserWrapper$1;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "support_camera_hfr"

    const-string v1, "o_0x07_support_hfr"

    .line 10
    invoke-virtual {p0, v0, v1}, Lcom/mi/config/FeatureParserWrapper$1;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "support_camera_movie_solid"

    const-string v1, "o_0x08_support_movie_solid"

    .line 11
    invoke-virtual {p0, v0, v1}, Lcom/mi/config/FeatureParserWrapper$1;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "support_camera_tilt_shift"

    const-string v1, "o_0x09_support_tilt_shift"

    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/mi/config/FeatureParserWrapper$1;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "support_camera_gradienter"

    const-string v1, "o_0x10_support_gradienter"

    .line 13
    invoke-virtual {p0, v0, v1}, Lcom/mi/config/FeatureParserWrapper$1;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "support_picture_watermark"

    const-string v1, "o_0x11_picture_water_mark"

    .line 14
    invoke-virtual {p0, v0, v1}, Lcom/mi/config/FeatureParserWrapper$1;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "support_camera_magic_mirror"

    const-string v1, "o_0x12_magic_mirror"

    .line 15
    invoke-virtual {p0, v0, v1}, Lcom/mi/config/FeatureParserWrapper$1;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "support_camera_age_detection"

    const-string v1, "o_0x13_age_detection"

    .line 16
    invoke-virtual {p0, v0, v1}, Lcom/mi/config/FeatureParserWrapper$1;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "burst_shoot_count"

    const-string v1, "o_0x14_burst_count"

    .line 17
    invoke-virtual {p0, v0, v1}, Lcom/mi/config/FeatureParserWrapper$1;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "support_dual_sd_card"

    const-string v1, "o_0x15_support_dual_sd_card"

    .line 18
    invoke-virtual {p0, v0, v1}, Lcom/mi/config/FeatureParserWrapper$1;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "support_psensor_pocket_mode"

    const-string v1, "o_0x16_support_psensor_pocket_mode"

    .line 19
    invoke-virtual {p0, v0, v1}, Lcom/mi/config/FeatureParserWrapper$1;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "support_super_resolution"

    const-string v1, "o_0x17_support_super_resolution"

    .line 20
    invoke-virtual {p0, v0, v1}, Lcom/mi/config/FeatureParserWrapper$1;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "support_camera_quick_snap"

    const-string v1, "o_0x18_support_camera_quick_snap"

    .line 21
    invoke-virtual {p0, v0, v1}, Lcom/mi/config/FeatureParserWrapper$1;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "support_camera_role"

    const-string v1, "o_0x19_camera_role"

    .line 22
    invoke-virtual {p0, v0, v1}, Lcom/mi/config/FeatureParserWrapper$1;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "support_camera_water_mark"

    const-string v1, "o_0x20_time_water_mark"

    .line 23
    invoke-virtual {p0, v0, v1}, Lcom/mi/config/FeatureParserWrapper$1;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "support_camera_burst_shoot"

    const-string v1, "o_0x21_long_press_shutter"

    .line 24
    invoke-virtual {p0, v0, v1}, Lcom/mi/config/FeatureParserWrapper$1;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "support_camera_record_location"

    const-string v1, "o_0x22_support_location"

    .line 25
    invoke-virtual {p0, v0, v1}, Lcom/mi/config/FeatureParserWrapper$1;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "support_camera_manual_function"

    const-string v1, "o_0x23_support_manual"

    .line 26
    invoke-virtual {p0, v0, v1}, Lcom/mi/config/FeatureParserWrapper$1;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "is_camera_lower_qrscan_frequency"

    const-string v1, "o_0x24_support_qr_code"

    .line 27
    invoke-virtual {p0, v0, v1}, Lcom/mi/config/FeatureParserWrapper$1;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "The key \""

    if-eqz p2, :cond_1

    const-string v1, "o_0x"

    .line 1
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    invoke-super {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" has already be mapped to \""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" must be mapped to non-null string starting with \"o_0x\""

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/mi/config/FeatureParserWrapper$1;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
