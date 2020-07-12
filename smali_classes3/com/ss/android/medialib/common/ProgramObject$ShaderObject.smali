.class public Lcom/ss/android/medialib/common/ProgramObject$ShaderObject;
.super Ljava/lang/Object;
.source "ProgramObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/medialib/common/ProgramObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShaderObject"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mShaderID:I

.field private mShaderType:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ss/android/medialib/common/ProgramObject$ShaderObject;->mShaderType:I

    .line 3
    iput v0, p0, Lcom/ss/android/medialib/common/ProgramObject$ShaderObject;->mShaderID:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/common/ProgramObject$ShaderObject;->init(Ljava/lang/String;I)Z

    return-void
.end method

.method public static loadShader(ILjava/lang/String;)I
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 3
    invoke-static {p0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p1, 0x1

    new-array v0, p1, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    const v2, 0x8b81

    .line 4
    invoke-static {p0, v2, v0, v1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 5
    aget v0, v0, v1

    if-eq v0, p1, :cond_0

    .line 6
    invoke-static {p0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ProgramObject"

    .line 7
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    return v1

    :cond_0
    return p0
.end method


# virtual methods
.method public getShaderID()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/android/medialib/common/ProgramObject$ShaderObject;->mShaderID:I

    return p0
.end method

.method public init(Ljava/lang/String;I)Z
    .locals 0

    .line 1
    iput p2, p0, Lcom/ss/android/medialib/common/ProgramObject$ShaderObject;->mShaderType:I

    .line 2
    invoke-static {p2, p1}, Lcom/ss/android/medialib/common/ProgramObject$ShaderObject;->loadShader(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ss/android/medialib/common/ProgramObject$ShaderObject;->mShaderID:I

    .line 3
    iget p0, p0, Lcom/ss/android/medialib/common/ProgramObject$ShaderObject;->mShaderID:I

    if-nez p0, :cond_0

    const-string p0, "ProgramObject"

    const-string p1, "glCreateShader Failed!..."

    .line 4
    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final release()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/android/medialib/common/ProgramObject$ShaderObject;->mShaderID:I

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/ss/android/medialib/common/ProgramObject$ShaderObject;->mShaderID:I

    return-void
.end method
