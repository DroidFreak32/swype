.class final Lcom/localytics/android/TestModeListView$MenuItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "TestModeListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/TestModeListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MenuItemAdapter"
.end annotation


# instance fields
.field private final MENU_ITEMS:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/localytics/android/TestModeListView;


# direct methods
.method public constructor <init>(Lcom/localytics/android/TestModeListView;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 589
    iput-object p1, p0, Lcom/localytics/android/TestModeListView$MenuItemAdapter;->this$0:Lcom/localytics/android/TestModeListView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 584
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "Disable Test Mode"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "Refresh"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "Copy Push Token"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "Copy Install ID"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/localytics/android/TestModeListView$MenuItemAdapter;->MENU_ITEMS:[Ljava/lang/String;

    .line 590
    iput-object p2, p0, Lcom/localytics/android/TestModeListView$MenuItemAdapter;->mContext:Landroid/content/Context;

    .line 591
    return-void
.end method

.method private getShape(I)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "position"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 613
    iget-object v2, p0, Lcom/localytics/android/TestModeListView$MenuItemAdapter;->this$0:Lcom/localytics/android/TestModeListView;

    invoke-virtual {v2}, Lcom/localytics/android/TestModeListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x41000000    # 8.0f

    mul-float v1, v2, v3

    .line 615
    .local v1, "radius":F
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v3, v6, [I

    fill-array-data v3, :array_0

    invoke-direct {v0, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 616
    .local v0, "gradientDrawable":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 617
    packed-switch p1, :pswitch_data_0

    .line 630
    :goto_0
    :pswitch_0
    return-object v0

    .line 620
    :pswitch_1
    const/16 v2, 0x8

    new-array v2, v2, [F

    aput v1, v2, v5

    aput v1, v2, v7

    aput v1, v2, v8

    aput v1, v2, v6

    const/4 v3, 0x4

    aput v4, v2, v3

    const/4 v3, 0x5

    aput v4, v2, v3

    const/4 v3, 0x6

    aput v4, v2, v3

    const/4 v3, 0x7

    aput v4, v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    goto :goto_0

    .line 626
    :pswitch_2
    const/16 v2, 0x8

    new-array v2, v2, [F

    aput v4, v2, v5

    aput v4, v2, v7

    aput v4, v2, v8

    aput v4, v2, v6

    const/4 v3, 0x4

    aput v1, v2, v3

    const/4 v3, 0x5

    aput v1, v2, v3

    const/4 v3, 0x6

    aput v1, v2, v3

    const/4 v3, 0x7

    aput v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    goto :goto_0

    .line 615
    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 617
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/localytics/android/TestModeListView$MenuItemAdapter;->MENU_ITEMS:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public final bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 582
    invoke-virtual {p0, p1}, Lcom/localytics/android/TestModeListView$MenuItemAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getItem(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 602
    iget-object v0, p0, Lcom/localytics/android/TestModeListView$MenuItemAdapter;->MENU_ITEMS:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 608
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
    const/16 v9, 0xff

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 637
    .line 639
    move-object v3, p2

    .local v3, "view":Landroid/view/View;
    if-nez p2, :cond_0

    .line 641
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/localytics/android/TestModeListView$MenuItemAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 642
    .local v1, "layout":Landroid/widget/LinearLayout;
    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v8, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 643
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 644
    iget-object v4, p0, Lcom/localytics/android/TestModeListView$MenuItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x40c00000    # 6.0f

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v2, v4

    .line 645
    .local v2, "padding":I
    invoke-virtual {v1, v6, v2, v6, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 648
    new-instance v0, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/localytics/android/TestModeListView$MenuItemAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 649
    .local v0, "item":Landroid/widget/TextView;
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setId(I)V

    .line 650
    const/high16 v4, 0x41d00000    # 26.0f

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 651
    const/16 v4, 0x5b

    invoke-static {v9, v6, v4, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 652
    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 653
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 656
    move-object v3, v1

    .line 658
    invoke-static {}, Lcom/localytics/android/DatapointHelper;->getApiLevel()I

    move-result v4

    const/16 v5, 0x10

    if-lt v4, v5, :cond_1

    .line 660
    invoke-direct {p0, p1}, Lcom/localytics/android/TestModeListView$MenuItemAdapter;->getShape(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 669
    .end local v0    # "item":Landroid/widget/TextView;
    .end local v1    # "layout":Landroid/widget/LinearLayout;
    .end local v2    # "padding":I
    :cond_0
    :goto_0
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 670
    .restart local v0    # "item":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/localytics/android/TestModeListView$MenuItemAdapter;->MENU_ITEMS:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 672
    packed-switch p1, :pswitch_data_0

    .line 683
    :goto_1
    return-object v3

    .line 664
    .restart local v1    # "layout":Landroid/widget/LinearLayout;
    .restart local v2    # "padding":I
    :cond_1
    invoke-virtual {v3, v8}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 675
    .end local v1    # "layout":Landroid/widget/LinearLayout;
    .end local v2    # "padding":I
    :pswitch_0
    const/high16 v4, -0x10000

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 672
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
