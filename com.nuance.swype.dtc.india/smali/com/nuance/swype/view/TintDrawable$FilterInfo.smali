.class Lcom/nuance/swype/view/TintDrawable$FilterInfo;
.super Ljava/lang/Object;
.source "TintDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/view/TintDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FilterInfo"
.end annotation


# instance fields
.field private color:I

.field private filter:Landroid/graphics/PorterDuffColorFilter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/swype/view/TintDrawable$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nuance/swype/view/TintDrawable$1;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/nuance/swype/view/TintDrawable$FilterInfo;-><init>()V

    return-void
.end method


# virtual methods
.method getFilter()Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/nuance/swype/view/TintDrawable$FilterInfo;->filter:Landroid/graphics/PorterDuffColorFilter;

    return-object v0
.end method

.method reset()Z
    .locals 2

    .prologue
    .line 74
    iget-object v1, p0, Lcom/nuance/swype/view/TintDrawable$FilterInfo;->filter:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 75
    .local v0, "changed":Z
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/swype/view/TintDrawable$FilterInfo;->filter:Landroid/graphics/PorterDuffColorFilter;

    .line 76
    return v0

    .line 74
    .end local v0    # "changed":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method update(ILandroid/graphics/PorterDuff$Mode;)Z
    .locals 1
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nuance/swype/view/TintDrawable$FilterInfo;->filter:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nuance/swype/view/TintDrawable$FilterInfo;->color:I

    if-ne v0, p1, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 70
    :goto_0
    return v0

    .line 69
    :cond_0
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/nuance/swype/view/TintDrawable$FilterInfo;->filter:Landroid/graphics/PorterDuffColorFilter;

    .line 70
    const/4 v0, 0x1

    goto :goto_0
.end method
