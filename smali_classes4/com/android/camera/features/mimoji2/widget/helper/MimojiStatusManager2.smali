.class public Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;
.super Lcom/android/camera/data/data/DataItemBase;
.source "MimojiStatusManager2.java"


# static fields
.field public static final DATA_MIMOJI_RECORD_STATE:Ljava/lang/String; = "mimoji_record_state"

.field private static final KEY:Ljava/lang/String; = "camera_settings_mimoji"

.field public static final MIMOJI_CREATE:I = 0x4

.field public static final MIMOJI_EDIT:I = 0x6

.field public static final MIMOJI_EMOTICON:I = 0x8

.field public static final MIMOJI_NONE:I = 0x0

.field public static final MIMOJI_PANEL_AVATAR:I = 0x1

.field public static final MIMOJI_PANEL_AVATAR_CARTOON:I = 0x65

.field public static final MIMOJI_PANEL_AVATAR_HUMAN:I = 0x64

.field public static final MIMOJI_PANEL_BG:I = 0x2

.field public static final MIMOJI_PANEL_CLOSE:I = 0x0

.field public static final MIMOJI_PANEL_TIMBRE:I = 0x3

.field public static final MIMOJI_PHOTO:I = 0x0

.field public static final MIMOJI_PREVIEW:I = 0x2

.field public static final MIMOJI_PREVIEW_PLAY:I = 0xa

.field public static final MIMOJI_VIDEO:I = 0x1


# instance fields
.field private mAvatarPanelState:I

.field private mCurrentMimojiBgInfo:Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;

.field private mCurrentMimojiInfo2:Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;

.field private mCurrentMimojiTimbreInfo:Lcom/android/camera/features/mimoji2/bean/MimojiTimbreInfo;

.field private volatile mIsLoading:Z

.field private mMode:I

.field private mPanelState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/data/data/DataItemBase;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->mMode:I

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->mIsLoading:Z

    .line 4
    iput v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->mPanelState:I

    const/16 v0, 0x64

    .line 5
    iput v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->mAvatarPanelState:I

    return-void
.end method


# virtual methods
.method public IsLoading()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->mIsLoading:Z

    return p0
.end method

.method public getAvatarPanelState()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->mAvatarPanelState:I

    return p0
.end method

.method public getCurrentMimojiBgInfo()Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->mCurrentMimojiBgInfo:Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;

    return-object p0
.end method

.method public getCurrentMimojiInfo()Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->mCurrentMimojiInfo2:Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;

    return-object p0
.end method

.method public declared-synchronized getCurrentMimojiState()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->mCurrentMimojiInfo2:Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;

    if-nez v0, :cond_0

    const-string v0, "close_state"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-object v0

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->mCurrentMimojiInfo2:Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;

    iget-object v0, v0, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mConfigPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    monitor-exit p0

    return-object v0

    :cond_2
    :goto_0
    :try_start_2
    const-string v0, "close_state"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCurrentMimojiTimbreInfo()Lcom/android/camera/features/mimoji2/bean/MimojiTimbreInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->mCurrentMimojiTimbreInfo:Lcom/android/camera/features/mimoji2/bean/MimojiTimbreInfo;

    return-object p0
.end method

.method public getMimojiPanelState()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->mPanelState:I

    return p0
.end method

.method public getMimojiRecordState()I
    .locals 2

    const-string v0, "mimoji_record_state"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/DataItemBase;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public declared-synchronized getMode()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->mMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isInMimojiCreate()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->mMode:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInMimojiEdit()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->mMode:I

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInMimojiEmoticon()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->mMode:I

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInMimojiPreview()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->mMode:I

    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInMimojiPreviewPlay()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->mMode:I

    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInPreviewSurface()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->mMode:I

    const/4 v0, 0x4

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTransient()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public provideKey()Ljava/lang/String;
    .locals 0

    const-string p0, "camera_settings_mimoji"

    return-object p0
.end method

.method public declared-synchronized reset()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->mMode:I

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->setMimojiPanelState(I)V

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->mCurrentMimojiBgInfo:Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;

    .line 4
    iput-object v1, p0, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->mCurrentMimojiInfo2:Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;

    .line 5
    iput-object v1, p0, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->mCurrentMimojiTimbreInfo:Lcom/android/camera/features/mimoji2/bean/MimojiTimbreInfo;

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->retainCameraMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->setMimojiRecordState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAvatarPanelState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->mAvatarPanelState:I

    return-void
.end method

.method public setCurrentMimojiBgInfo(Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->mCurrentMimojiBgInfo:Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;

    return-void
.end method

.method public setCurrentMimojiCloseState()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->mCurrentMimojiInfo2:Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;

    invoke-direct {v0}, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;-><init>()V

    .line 3
    iput-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->mCurrentMimojiInfo2:Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->mCurrentMimojiInfo2:Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;

    const-string v0, "close_state"

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mConfigPath:Ljava/lang/String;

    return-void
.end method

.method public setCurrentMimojiInfo(Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->mCurrentMimojiInfo2:Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;

    return-void
.end method

.method public setCurrentMimojiTimbreInfo(Lcom/android/camera/features/mimoji2/bean/MimojiTimbreInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->mCurrentMimojiTimbreInfo:Lcom/android/camera/features/mimoji2/bean/MimojiTimbreInfo;

    return-void
.end method

.method public declared-synchronized setIsLoading(Z)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-boolean p1, p0, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->mIsLoading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMimojiPanelState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->mPanelState:I

    return-void
.end method

.method public setMimojiRecordState(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    const-string v0, "mimoji_record_state"

    invoke-interface {p0, v0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public declared-synchronized setMode(I)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput p1, p0, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->mMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
