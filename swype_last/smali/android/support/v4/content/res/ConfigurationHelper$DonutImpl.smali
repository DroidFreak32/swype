.class Landroid/support/v4/content/res/ConfigurationHelper$DonutImpl;
.super Ljava/lang/Object;
.source "ConfigurationHelper.java"

# interfaces
.implements Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/res/ConfigurationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DonutImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/support/v4/content/res/ConfigurationHelper$DonutImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getScreenHeightDp(Landroid/content/res/Resources;)I
    .registers 3
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 54
    invoke-static {p1}, Landroid/support/v4/content/res/ConfigurationHelperDonut;->getScreenHeightDp(Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method

.method public getScreenWidthDp(Landroid/content/res/Resources;)I
    .registers 3
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 59
    invoke-static {p1}, Landroid/support/v4/content/res/ConfigurationHelperDonut;->getScreenWidthDp(Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method

.method public getSmallestScreenWidthDp(Landroid/content/res/Resources;)I
    .registers 4
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 64
    .line 1038
    invoke-static {p1}, Landroid/support/v4/content/res/ConfigurationHelperDonut;->getScreenWidthDp(Landroid/content/res/Resources;)I

    move-result v0

    invoke-static {p1}, Landroid/support/v4/content/res/ConfigurationHelperDonut;->getScreenHeightDp(Landroid/content/res/Resources;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 64
    return v0
.end method
