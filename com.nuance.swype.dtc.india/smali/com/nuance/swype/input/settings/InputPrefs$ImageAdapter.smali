.class public Lcom/nuance/swype/input/settings/InputPrefs$ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "InputPrefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/InputPrefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/nuance/swype/input/settings/InputPrefs;


# direct methods
.method public constructor <init>(Lcom/nuance/swype/input/settings/InputPrefs;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/InputPrefs;
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    .line 803
    iput-object p1, p0, Lcom/nuance/swype/input/settings/InputPrefs$ImageAdapter;->this$0:Lcom/nuance/swype/input/settings/InputPrefs;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 804
    iput-object p2, p0, Lcom/nuance/swype/input/settings/InputPrefs$ImageAdapter;->mContext:Landroid/content/Context;

    .line 805
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 808
    invoke-static {}, Lcom/nuance/swype/input/settings/InputPrefs;->access$600()[Ljava/lang/Integer;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 813
    if-ltz p1, :cond_0

    const/16 v0, 0x19

    if-ge p1, v0, :cond_0

    .line 814
    invoke-static {}, Lcom/nuance/swype/input/settings/InputPrefs;->access$600()[Ljava/lang/Integer;

    move-result-object v0

    aget-object v0, v0, p1

    .line 816
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/nuance/swype/input/settings/InputPrefs;->access$600()[Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 821
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 827
    if-nez p2, :cond_0

    .line 829
    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/nuance/swype/input/settings/InputPrefs$ImageAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 830
    .local v0, "imageView":Landroid/widget/ImageView;
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    iget-object v3, p0, Lcom/nuance/swype/input/settings/InputPrefs$ImageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$dimen;->color_picker_grid_cell_size_length:I

    .line 831
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/nuance/swype/input/settings/InputPrefs$ImageAdapter;->mContext:Landroid/content/Context;

    .line 832
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$dimen;->color_picker_grid_cell_size_length:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 830
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 834
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 843
    :goto_0
    iget-object v2, p0, Lcom/nuance/swype/input/settings/InputPrefs$ImageAdapter;->this$0:Lcom/nuance/swype/input/settings/InputPrefs;

    .line 844
    invoke-static {v2}, Lcom/nuance/swype/input/settings/InputPrefs;->access$000(Lcom/nuance/swype/input/settings/InputPrefs;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lcom/nuance/swype/input/settings/InputPrefs;->access$600()[Ljava/lang/Integer;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 846
    .local v1, "shape":Landroid/graphics/drawable/GradientDrawable;
    invoke-static {}, Lcom/nuance/swype/input/settings/InputPrefs;->access$700()[I

    move-result-object v2

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 848
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 849
    .end local v0    # "imageView":Landroid/widget/ImageView;
    .end local v1    # "shape":Landroid/graphics/drawable/GradientDrawable;
    :goto_1
    return-object v0

    .line 836
    :cond_0
    instance-of v2, p2, Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    move-object v0, p2

    .line 837
    check-cast v0, Landroid/widget/ImageView;

    .restart local v0    # "imageView":Landroid/widget/ImageView;
    goto :goto_0

    .line 840
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
