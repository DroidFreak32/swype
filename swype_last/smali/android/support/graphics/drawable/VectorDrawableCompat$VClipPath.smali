.class final Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;
.super Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/graphics/drawable/VectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VClipPath"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1423
    invoke-direct {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;-><init>()V

    .line 1425
    return-void
.end method

.method public constructor <init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;)V
    .registers 2
    .param p1, "copy"    # Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;

    .prologue
    .line 1428
    invoke-direct {p0, p1}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;-><init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;)V

    .line 1429
    return-void
.end method


# virtual methods
.method public final isClipPath()Z
    .registers 2

    .prologue
    .line 1462
    const/4 v0, 0x1

    return v0
.end method

.method final updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .registers 5
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 1447
    const/4 v2, 0x0

    .line 1448
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1449
    .local v1, "pathName":Ljava/lang/String;
    if-eqz v1, :cond_9

    .line 1450
    iput-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;->mPathName:Ljava/lang/String;

    .line 1453
    :cond_9
    const/4 v2, 0x1

    .line 1454
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1455
    .local v0, "pathData":Ljava/lang/String;
    if-eqz v0, :cond_16

    .line 1456
    invoke-static {v0}, Landroid/support/graphics/drawable/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroid/support/graphics/drawable/PathParser$PathDataNode;

    move-result-object v2

    iput-object v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;->mNodes:[Landroid/support/graphics/drawable/PathParser$PathDataNode;

    .line 1458
    :cond_16
    return-void
.end method
