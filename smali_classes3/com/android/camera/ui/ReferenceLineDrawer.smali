.class public Lcom/android/camera/ui/ReferenceLineDrawer;
.super Landroid/view/View;
.source "ReferenceLineDrawer.java"


# static fields
.field private static final BORDER:I = 0x1

.field public static final TAG:Ljava/lang/String; = "ReferenceLineDrawer"


# instance fields
.field private isGradienterEnabled:Z

.field private mBottomVisible:Z

.field private mColumnCount:I

.field private mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

.field private mDeviceRotation:F

.field private mFrameColor:I

.field private mFramePaint:Landroid/graphics/Paint;

.field private mLineColor:I

.field private mLinePaint:Landroid/graphics/Paint;

.field private mRowCount:I

.field private mTopVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    .line 3
    iput p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    .line 4
    iput-boolean p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mTopVisible:Z

    .line 5
    iput-boolean p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mBottomVisible:Z

    const p1, 0x6affffff

    .line 6
    iput p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLineColor:I

    const/high16 p1, 0x18000000

    .line 7
    iput p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFrameColor:I

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mDeviceRotation:F

    .line 9
    sget-object p1, Lcom/android/camera/ui/GradienterDrawer$Direct;->NONE:Lcom/android/camera/ui/GradienterDrawer$Direct;

    iput-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 20
    iput p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    .line 21
    iput p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    .line 22
    iput-boolean p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mTopVisible:Z

    .line 23
    iput-boolean p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mBottomVisible:Z

    const p1, 0x6affffff

    .line 24
    iput p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLineColor:I

    const/high16 p1, 0x18000000

    .line 25
    iput p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFrameColor:I

    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mDeviceRotation:F

    .line 27
    sget-object p1, Lcom/android/camera/ui/GradienterDrawer$Direct;->NONE:Lcom/android/camera/ui/GradienterDrawer$Direct;

    iput-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 11
    iput p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    .line 12
    iput p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    .line 13
    iput-boolean p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mTopVisible:Z

    .line 14
    iput-boolean p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mBottomVisible:Z

    const p1, 0x6affffff

    .line 15
    iput p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLineColor:I

    const/high16 p1, 0x18000000

    .line 16
    iput p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFrameColor:I

    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mDeviceRotation:F

    .line 18
    sget-object p1, Lcom/android/camera/ui/GradienterDrawer$Direct;->NONE:Lcom/android/camera/ui/GradienterDrawer$Direct;

    iput-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    return-void
.end method

.method private resetline(Landroid/graphics/Canvas;)V
    .locals 22

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v3, v2

    move v4, v2

    .line 2
    :goto_0
    iget v5, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    const/4 v6, 0x2

    if-ge v4, v5, :cond_2

    .line 3
    iget-boolean v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v7, :cond_0

    iget-object v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v8, Lcom/android/camera/ui/GradienterDrawer$Direct;->LEFT:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v7, v8, :cond_0

    if-ne v4, v6, :cond_0

    mul-int v6, v4, v1

    .line 4
    div-int v7, v6, v5

    int-to-float v9, v7

    const/high16 v10, 0x3f800000    # 1.0f

    div-int v5, v6, v5

    add-int/lit8 v5, v5, 0x3

    int-to-float v11, v5

    iget v5, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    div-int v5, v3, v5

    int-to-float v12, v5

    iget-object v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 5
    iget v5, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    div-int v7, v6, v5

    int-to-float v9, v7

    iget v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    div-int v8, v3, v7

    sub-int/2addr v7, v2

    mul-int/2addr v8, v7

    add-int/2addr v8, v2

    int-to-float v10, v8

    div-int/2addr v6, v5

    add-int/lit8 v6, v6, 0x3

    int-to-float v11, v6

    add-int/lit8 v5, v3, -0x1

    int-to-float v12, v5

    iget-object v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 6
    :cond_0
    iget-boolean v5, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v6, Lcom/android/camera/ui/GradienterDrawer$Direct;->RIGHT:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v5, v6, :cond_1

    if-ne v4, v2, :cond_1

    mul-int v5, v4, v1

    .line 7
    iget v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    div-int v7, v5, v6

    int-to-float v9, v7

    const/high16 v10, 0x3f800000    # 1.0f

    div-int v6, v5, v6

    add-int/lit8 v6, v6, 0x3

    int-to-float v11, v6

    iget v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    div-int v6, v3, v6

    int-to-float v12, v6

    iget-object v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 8
    iget v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    div-int v7, v5, v6

    int-to-float v9, v7

    iget v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    div-int v8, v3, v7

    sub-int/2addr v7, v2

    mul-int/2addr v8, v7

    add-int/2addr v8, v2

    int-to-float v10, v8

    div-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x3

    int-to-float v11, v5

    add-int/lit8 v5, v3, -0x1

    int-to-float v12, v5

    iget-object v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    mul-int v5, v4, v1

    .line 9
    iget v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    div-int v7, v5, v6

    int-to-float v9, v7

    const/high16 v10, 0x3f800000    # 1.0f

    div-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x3

    int-to-float v11, v5

    add-int/lit8 v5, v3, -0x1

    int-to-float v12, v5

    iget-object v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 10
    :cond_2
    iget-boolean v4, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mBottomVisible:Z

    xor-int/2addr v4, v2

    const/4 v5, 0x0

    move v7, v5

    .line 11
    :goto_2
    iget v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    if-gt v7, v8, :cond_9

    if-eqz v7, :cond_3

    if-ne v7, v8, :cond_5

    :cond_3
    if-nez v7, :cond_4

    .line 12
    iget-boolean v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mTopVisible:Z

    if-nez v8, :cond_5

    :cond_4
    iget v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    if-ne v7, v8, :cond_8

    iget-boolean v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mBottomVisible:Z

    if-eqz v8, :cond_8

    .line 13
    :cond_5
    iget-boolean v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v9, Lcom/android/camera/ui/GradienterDrawer$Direct;->BOTTOM:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v8, v9, :cond_6

    if-ne v7, v2, :cond_6

    int-to-float v11, v4

    mul-int v8, v7, v3

    .line 14
    iget v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    div-int v10, v8, v9

    int-to-float v12, v10

    iget v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    div-int v10, v1, v10

    int-to-float v13, v10

    div-int v9, v8, v9

    add-int/lit8 v9, v9, 0x3

    int-to-float v14, v9

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 15
    iget v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    div-int v10, v1, v9

    sub-int/2addr v9, v2

    mul-int/2addr v10, v9

    add-int/2addr v10, v4

    int-to-float v12, v10

    iget v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    div-int v10, v8, v9

    int-to-float v13, v10

    sub-int v10, v1, v4

    int-to-float v14, v10

    div-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x3

    int-to-float v15, v8

    iget-object v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v16, v8

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 16
    :cond_6
    iget-boolean v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v8, :cond_7

    iget-object v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v9, Lcom/android/camera/ui/GradienterDrawer$Direct;->TOP:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v8, v9, :cond_7

    if-ne v7, v6, :cond_7

    int-to-float v11, v4

    mul-int v8, v7, v3

    .line 17
    iget v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    div-int v10, v8, v9

    int-to-float v12, v10

    iget v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    div-int v10, v1, v10

    int-to-float v13, v10

    div-int v9, v8, v9

    add-int/lit8 v9, v9, 0x3

    int-to-float v14, v9

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 18
    iget v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    div-int v10, v1, v9

    sub-int/2addr v9, v2

    mul-int/2addr v10, v9

    add-int/2addr v10, v4

    int-to-float v12, v10

    iget v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    div-int v10, v8, v9

    int-to-float v13, v10

    sub-int v10, v1, v4

    int-to-float v14, v10

    div-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x3

    int-to-float v15, v8

    iget-object v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v16, v8

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_7
    int-to-float v8, v4

    mul-int v9, v7, v3

    .line 19
    iget v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    div-int v11, v9, v10

    int-to-float v11, v11

    sub-int v12, v1, v4

    int-to-float v12, v12

    div-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x3

    int-to-float v9, v9

    iget-object v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v16, p1

    move/from16 v17, v8

    move/from16 v18, v11

    move/from16 v19, v12

    move/from16 v20, v9

    move-object/from16 v21, v10

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_8
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    :cond_9
    move v7, v2

    .line 20
    :goto_4
    iget v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    if-ge v7, v8, :cond_c

    .line 21
    iget-boolean v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v9, :cond_a

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v10, Lcom/android/camera/ui/GradienterDrawer$Direct;->RIGHT:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v9, v10, :cond_a

    if-ne v7, v2, :cond_a

    mul-int v9, v7, v1

    .line 22
    div-int v10, v9, v8

    int-to-float v12, v10

    const/high16 v13, 0x3f800000    # 1.0f

    div-int v8, v9, v8

    add-int/2addr v8, v6

    int-to-float v14, v8

    iget v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    div-int v8, v3, v8

    int-to-float v15, v8

    iget-object v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v16, v8

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 23
    iget v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    div-int v10, v9, v8

    int-to-float v12, v10

    iget v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    div-int v11, v3, v10

    sub-int/2addr v10, v2

    mul-int/2addr v11, v10

    add-int/2addr v11, v2

    int-to-float v13, v11

    div-int/2addr v9, v8

    add-int/2addr v9, v6

    int-to-float v14, v9

    add-int/lit8 v8, v3, -0x1

    int-to-float v15, v8

    iget-object v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v16, v8

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_5

    .line 24
    :cond_a
    iget-boolean v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v8, :cond_b

    iget-object v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v9, Lcom/android/camera/ui/GradienterDrawer$Direct;->LEFT:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v8, v9, :cond_b

    if-ne v7, v6, :cond_b

    mul-int v8, v7, v1

    .line 25
    iget v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    div-int v10, v8, v9

    int-to-float v12, v10

    const/high16 v13, 0x3f800000    # 1.0f

    div-int v9, v8, v9

    add-int/2addr v9, v6

    int-to-float v14, v9

    iget v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    div-int v9, v3, v9

    int-to-float v15, v9

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v16, v9

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 26
    iget v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    div-int v10, v8, v9

    int-to-float v12, v10

    iget v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    div-int v11, v3, v10

    sub-int/2addr v10, v2

    mul-int/2addr v11, v10

    add-int/2addr v11, v2

    int-to-float v13, v11

    div-int/2addr v8, v9

    add-int/2addr v8, v6

    int-to-float v14, v8

    add-int/lit8 v8, v3, -0x1

    int-to-float v15, v8

    iget-object v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v16, v8

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_5

    :cond_b
    mul-int v8, v7, v1

    .line 27
    iget v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    div-int v10, v8, v9

    int-to-float v12, v10

    const/high16 v13, 0x3f800000    # 1.0f

    div-int/2addr v8, v9

    add-int/2addr v8, v6

    int-to-float v14, v8

    add-int/lit8 v8, v3, -0x1

    int-to-float v15, v8

    iget-object v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v16, v8

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4

    .line 28
    :cond_c
    :goto_6
    iget v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    if-gt v5, v7, :cond_13

    if-eqz v5, :cond_d

    if-ne v5, v7, :cond_f

    :cond_d
    if-nez v5, :cond_e

    .line 29
    iget-boolean v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mTopVisible:Z

    if-nez v7, :cond_f

    :cond_e
    iget v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    if-ne v5, v7, :cond_12

    iget-boolean v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mBottomVisible:Z

    if-eqz v7, :cond_12

    .line 30
    :cond_f
    iget-boolean v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v7, :cond_10

    iget-object v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v8, Lcom/android/camera/ui/GradienterDrawer$Direct;->BOTTOM:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v7, v8, :cond_10

    if-ne v5, v2, :cond_10

    int-to-float v10, v4

    mul-int v7, v5, v3

    .line 31
    iget v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    div-int v9, v7, v8

    int-to-float v11, v9

    iget v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    div-int v9, v1, v9

    int-to-float v12, v9

    div-int v8, v7, v8

    add-int/2addr v8, v6

    int-to-float v13, v8

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 32
    iget v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    div-int v9, v1, v8

    sub-int/2addr v8, v2

    mul-int/2addr v9, v8

    add-int/2addr v9, v4

    int-to-float v11, v9

    iget v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    div-int v9, v7, v8

    int-to-float v12, v9

    sub-int v9, v1, v4

    int-to-float v13, v9

    div-int/2addr v7, v8

    add-int/2addr v7, v6

    int-to-float v14, v7

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_7

    .line 33
    :cond_10
    iget-boolean v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v7, :cond_11

    iget-object v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v8, Lcom/android/camera/ui/GradienterDrawer$Direct;->TOP:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v7, v8, :cond_11

    if-ne v5, v6, :cond_11

    int-to-float v10, v4

    mul-int v7, v5, v3

    .line 34
    iget v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    div-int v9, v7, v8

    int-to-float v11, v9

    iget v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    div-int v9, v1, v9

    int-to-float v12, v9

    div-int v8, v7, v8

    add-int/2addr v8, v6

    int-to-float v13, v8

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 35
    iget v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    div-int v9, v1, v8

    sub-int/2addr v8, v2

    mul-int/2addr v9, v8

    add-int/2addr v9, v4

    int-to-float v11, v9

    iget v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    div-int v9, v7, v8

    int-to-float v12, v9

    sub-int v9, v1, v4

    int-to-float v13, v9

    div-int/2addr v7, v8

    add-int/2addr v7, v6

    int-to-float v14, v7

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_7

    :cond_11
    int-to-float v7, v4

    mul-int v8, v5, v3

    .line 36
    iget v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    div-int v10, v8, v9

    int-to-float v10, v10

    sub-int v11, v1, v4

    int-to-float v11, v11

    div-int/2addr v8, v9

    add-int/2addr v8, v6

    int-to-float v8, v8

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v16, p1

    move/from16 v17, v7

    move/from16 v18, v10

    move/from16 v19, v11

    move/from16 v20, v8

    move-object/from16 v21, v9

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_12
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_6

    :cond_13
    return-void
.end method

.method private updateView(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->getDeviceRotation()F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mDeviceRotation:F

    .line 2
    iget v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mDeviceRotation:F

    const/high16 v1, 0x42340000    # 45.0f

    cmpl-float v1, v0, v1

    const/high16 v2, 0x43070000    # 135.0f

    if-lez v1, :cond_0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 3
    sget-object v0, Lcom/android/camera/ui/GradienterDrawer$Direct;->RIGHT:Lcom/android/camera/ui/GradienterDrawer$Direct;

    goto :goto_0

    .line 4
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mDeviceRotation:F

    cmpl-float v1, v0, v2

    const/high16 v2, 0x43610000    # 225.0f

    if-ltz v1, :cond_1

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 5
    sget-object v0, Lcom/android/camera/ui/GradienterDrawer$Direct;->TOP:Lcom/android/camera/ui/GradienterDrawer$Direct;

    goto :goto_0

    .line 6
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mDeviceRotation:F

    cmpl-float v1, v0, v2

    if-lez v1, :cond_2

    const v1, 0x439d8000    # 315.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 7
    sget-object v0, Lcom/android/camera/ui/GradienterDrawer$Direct;->LEFT:Lcom/android/camera/ui/GradienterDrawer$Direct;

    goto :goto_0

    .line 8
    :cond_2
    sget-object v0, Lcom/android/camera/ui/GradienterDrawer$Direct;->BOTTOM:Lcom/android/camera/ui/GradienterDrawer$Direct;

    .line 9
    iget v1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mDeviceRotation:F

    const/high16 v2, 0x43960000    # 300.0f

    cmpl-float v1, v1, v2

    .line 10
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-eq v0, v1, :cond_3

    .line 11
    iput-object v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    .line 12
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ReferenceLineDrawer;->resetline(Landroid/graphics/Canvas;)V

    .line 13
    iget-boolean p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz p1, :cond_4

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_4
    return-void
.end method


# virtual methods
.method public initialize(II)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    .line 2
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    .line 3
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    .line 4
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    .line 5
    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLineColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFrameColor:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ReferenceLineDrawer;->updateView(Landroid/graphics/Canvas;)V

    .line 2
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    .line 2
    sget-object p1, Lcom/android/camera/ui/GradienterDrawer$Direct;->NONE:Lcom/android/camera/ui/GradienterDrawer$Direct;

    iput-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    :cond_0
    return-void
.end method

.method public setBorderVisible(ZZ)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mTopVisible:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mBottomVisible:Z

    if-eq v0, p2, :cond_1

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mTopVisible:Z

    .line 3
    iput-boolean p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mBottomVisible:Z

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setGradienterEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Lcom/android/camera/ui/GradienterDrawer$Direct;->NONE:Lcom/android/camera/ui/GradienterDrawer$Direct;

    iput-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setLineColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLineColor:I

    return-void
.end method
