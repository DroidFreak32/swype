.class final Lcom/localytics/android/TestModeListView$CancelItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "TestModeListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/TestModeListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CancelItemAdapter"
.end annotation


# instance fields
.field private final MENU_ITEMS:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/localytics/android/TestModeListView;


# direct methods
.method constructor <init>(Lcom/localytics/android/TestModeListView;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 694
    iput-object p1, p0, Lcom/localytics/android/TestModeListView$CancelItemAdapter;->this$0:Lcom/localytics/android/TestModeListView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 689
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "Cancel"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/localytics/android/TestModeListView$CancelItemAdapter;->MENU_ITEMS:[Ljava/lang/String;

    .line 695
    iput-object p2, p0, Lcom/localytics/android/TestModeListView$CancelItemAdapter;->mContext:Landroid/content/Context;

    .line 696
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lcom/localytics/android/TestModeListView$CancelItemAdapter;->MENU_ITEMS:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public final bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 687
    invoke-virtual {p0, p1}, Lcom/localytics/android/TestModeListView$CancelItemAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getItem(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 707
    iget-object v0, p0, Lcom/localytics/android/TestModeListView$CancelItemAdapter;->MENU_ITEMS:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 713
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 720
    .line 722
    move-object v5, p2

    .local v5, "view":Landroid/view/View;
    if-nez p2, :cond_0

    .line 724
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/localytics/android/TestModeListView$CancelItemAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 725
    .local v2, "layout":Landroid/widget/LinearLayout;
    new-instance v6, Landroid/widget/AbsListView$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 726
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 727
    iget-object v6, p0, Lcom/localytics/android/TestModeListView$CancelItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    const/high16 v7, 0x40c00000    # 6.0f

    mul-float/2addr v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v3, v6

    .line 728
    .local v3, "padding":I
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v3, v7, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 731
    new-instance v1, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/localytics/android/TestModeListView$CancelItemAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 732
    .local v1, "item":Landroid/widget/TextView;
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setId(I)V

    .line 733
    const/high16 v6, 0x41d00000    # 26.0f

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 734
    const/16 v6, 0xff

    const/4 v7, 0x0

    const/16 v8, 0x5b

    const/16 v9, 0xff

    invoke-static {v6, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 735
    const/16 v6, 0x11

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 736
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 739
    move-object v5, v2

    .line 741
    iget-object v6, p0, Lcom/localytics/android/TestModeListView$CancelItemAdapter;->this$0:Lcom/localytics/android/TestModeListView;

    invoke-virtual {v6}, Lcom/localytics/android/TestModeListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    const/high16 v7, 0x41000000    # 8.0f

    mul-float v4, v6, v7

    .line 742
    .local v4, "radius":F
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v6, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v7, 0x3

    new-array v7, v7, [I

    fill-array-data v7, :array_0

    invoke-direct {v0, v6, v7}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 743
    .local v0, "gradientDrawable":Landroid/graphics/drawable/GradientDrawable;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 744
    const/16 v6, 0x8

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput v4, v6, v7

    const/4 v7, 0x1

    aput v4, v6, v7

    const/4 v7, 0x2

    aput v4, v6, v7

    const/4 v7, 0x3

    aput v4, v6, v7

    const/4 v7, 0x4

    aput v4, v6, v7

    const/4 v7, 0x5

    aput v4, v6, v7

    const/4 v7, 0x6

    aput v4, v6, v7

    const/4 v7, 0x7

    aput v4, v6, v7

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 745
    invoke-static {}, Lcom/localytics/android/DatapointHelper;->getApiLevel()I

    move-result v6

    const/16 v7, 0x10

    if-lt v6, v7, :cond_1

    .line 747
    invoke-virtual {v5, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 756
    .end local v0    # "gradientDrawable":Landroid/graphics/drawable/GradientDrawable;
    .end local v1    # "item":Landroid/widget/TextView;
    .end local v2    # "layout":Landroid/widget/LinearLayout;
    .end local v3    # "padding":I
    .end local v4    # "radius":F
    :cond_0
    :goto_0
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 757
    .restart local v1    # "item":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/localytics/android/TestModeListView$CancelItemAdapter;->MENU_ITEMS:[Ljava/lang/String;

    aget-object v6, v6, p1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 758
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 760
    return-object v5

    .line 751
    .restart local v0    # "gradientDrawable":Landroid/graphics/drawable/GradientDrawable;
    .restart local v2    # "layout":Landroid/widget/LinearLayout;
    .restart local v3    # "padding":I
    .restart local v4    # "radius":F
    :cond_1
    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 742
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data
.end method
