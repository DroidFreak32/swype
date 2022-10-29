.class Lcom/localytics/android/TestModeListView$MenuDialog;
.super Landroid/app/Dialog;
.source "TestModeListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/TestModeListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MenuDialog"
.end annotation


# instance fields
.field private mDialogLayout:Landroid/widget/LinearLayout;

.field private mMetrics:Landroid/util/DisplayMetrics;

.field final synthetic this$0:Lcom/localytics/android/TestModeListView;


# direct methods
.method public constructor <init>(Lcom/localytics/android/TestModeListView;Landroid/content/Context;I)V
    .registers 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "theme"    # I

    .prologue
    .line 443
    iput-object p1, p0, Lcom/localytics/android/TestModeListView$MenuDialog;->this$0:Lcom/localytics/android/TestModeListView;

    .line 444
    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 446
    invoke-direct {p0}, Lcom/localytics/android/TestModeListView$MenuDialog;->setupViews()V

    .line 448
    invoke-direct {p0}, Lcom/localytics/android/TestModeListView$MenuDialog;->adjustLayout()V

    .line 449
    return-void
.end method

.method private adjustLayout()V
    .registers 6

    .prologue
    const/16 v4, 0x400

    .line 565
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v2, p0, Lcom/localytics/android/TestModeListView$MenuDialog;->mMetrics:Landroid/util/DisplayMetrics;

    .line 566
    iget-object v2, p0, Lcom/localytics/android/TestModeListView$MenuDialog;->this$0:Lcom/localytics/android/TestModeListView;

    invoke-virtual {v2}, Lcom/localytics/android/TestModeListView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 567
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iget-object v3, p0, Lcom/localytics/android/TestModeListView$MenuDialog;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 572
    invoke-virtual {p0}, Lcom/localytics/android/TestModeListView$MenuDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 573
    .local v1, "window":Landroid/view/Window;
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 574
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 575
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 578
    invoke-virtual {v1, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 579
    return-void
.end method

.method private setupViews()V
    .registers 13
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x1

    const/16 v9, 0x10

    .line 455
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/localytics/android/TestModeListView$MenuDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/localytics/android/TestModeListView$MenuDialog;->mDialogLayout:Landroid/widget/LinearLayout;

    .line 456
    iget-object v6, p0, Lcom/localytics/android/TestModeListView$MenuDialog;->mDialogLayout:Landroid/widget/LinearLayout;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v7, v11, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 457
    iget-object v6, p0, Lcom/localytics/android/TestModeListView$MenuDialog;->mDialogLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 458
    iget-object v6, p0, Lcom/localytics/android/TestModeListView$MenuDialog;->mDialogLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 460
    invoke-virtual {p0}, Lcom/localytics/android/TestModeListView$MenuDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x106000d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 463
    .local v5, "transparentColor":I
    new-instance v2, Lcom/localytics/android/TestModeListView$MenuItemAdapter;

    iget-object v6, p0, Lcom/localytics/android/TestModeListView$MenuDialog;->this$0:Lcom/localytics/android/TestModeListView;

    iget-object v7, p0, Lcom/localytics/android/TestModeListView$MenuDialog;->this$0:Lcom/localytics/android/TestModeListView;

    invoke-virtual {v7}, Lcom/localytics/android/TestModeListView;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Lcom/localytics/android/TestModeListView$MenuItemAdapter;-><init>(Lcom/localytics/android/TestModeListView;Landroid/content/Context;)V

    .line 464
    .local v2, "menuAdapter":Lcom/localytics/android/TestModeListView$MenuItemAdapter;
    new-instance v3, Landroid/widget/ListView;

    iget-object v6, p0, Lcom/localytics/android/TestModeListView$MenuDialog;->this$0:Lcom/localytics/android/TestModeListView;

    invoke-virtual {v6}, Lcom/localytics/android/TestModeListView;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 465
    .local v3, "menus":Landroid/widget/ListView;
    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 466
    invoke-static {}, Lcom/localytics/android/DatapointHelper;->getApiLevel()I

    move-result v6

    if-lt v6, v9, :cond_e4

    .line 468
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 474
    :goto_5c
    invoke-virtual {v3, v10}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 475
    new-instance v6, Lcom/localytics/android/TestModeListView$MenuDialog$1;

    invoke-direct {v6, p0}, Lcom/localytics/android/TestModeListView$MenuDialog$1;-><init>(Lcom/localytics/android/TestModeListView$MenuDialog;)V

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 522
    iget-object v6, p0, Lcom/localytics/android/TestModeListView$MenuDialog;->mDialogLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 525
    new-instance v4, Landroid/view/View;

    iget-object v6, p0, Lcom/localytics/android/TestModeListView$MenuDialog;->this$0:Lcom/localytics/android/TestModeListView;

    invoke-virtual {v6}, Lcom/localytics/android/TestModeListView;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 526
    .local v4, "space":Landroid/view/View;
    invoke-static {}, Lcom/localytics/android/DatapointHelper;->getApiLevel()I

    move-result v6

    if-lt v6, v9, :cond_e9

    .line 528
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 534
    :goto_85
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v7, p0, Lcom/localytics/android/TestModeListView$MenuDialog;->this$0:Lcom/localytics/android/TestModeListView;

    invoke-virtual {v7}, Lcom/localytics/android/TestModeListView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    const/high16 v8, 0x41200000    # 10.0f

    mul-float/2addr v7, v8

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    invoke-direct {v6, v11, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 535
    iget-object v6, p0, Lcom/localytics/android/TestModeListView$MenuDialog;->mDialogLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 537
    new-instance v1, Lcom/localytics/android/TestModeListView$CancelItemAdapter;

    iget-object v6, p0, Lcom/localytics/android/TestModeListView$MenuDialog;->this$0:Lcom/localytics/android/TestModeListView;

    iget-object v7, p0, Lcom/localytics/android/TestModeListView$MenuDialog;->this$0:Lcom/localytics/android/TestModeListView;

    invoke-virtual {v7}, Lcom/localytics/android/TestModeListView;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Lcom/localytics/android/TestModeListView$CancelItemAdapter;-><init>(Lcom/localytics/android/TestModeListView;Landroid/content/Context;)V

    .line 538
    .local v1, "cancelAdapter":Lcom/localytics/android/TestModeListView$CancelItemAdapter;
    new-instance v0, Landroid/widget/ListView;

    iget-object v6, p0, Lcom/localytics/android/TestModeListView$MenuDialog;->this$0:Lcom/localytics/android/TestModeListView;

    invoke-virtual {v6}, Lcom/localytics/android/TestModeListView;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 539
    .local v0, "cancel":Landroid/widget/ListView;
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 540
    invoke-static {}, Lcom/localytics/android/DatapointHelper;->getApiLevel()I

    move-result v6

    if-lt v6, v9, :cond_ed

    .line 542
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 548
    :goto_ce
    new-instance v6, Lcom/localytics/android/TestModeListView$MenuDialog$2;

    invoke-direct {v6, p0}, Lcom/localytics/android/TestModeListView$MenuDialog$2;-><init>(Lcom/localytics/android/TestModeListView$MenuDialog;)V

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 556
    iget-object v6, p0, Lcom/localytics/android/TestModeListView$MenuDialog;->mDialogLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 558
    invoke-virtual {p0, v10}, Lcom/localytics/android/TestModeListView$MenuDialog;->requestWindowFeature(I)Z

    .line 559
    iget-object v6, p0, Lcom/localytics/android/TestModeListView$MenuDialog;->mDialogLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v6}, Lcom/localytics/android/TestModeListView$MenuDialog;->setContentView(Landroid/view/View;)V

    .line 560
    return-void

    .line 472
    .end local v0    # "cancel":Landroid/widget/ListView;
    .end local v1    # "cancelAdapter":Lcom/localytics/android/TestModeListView$CancelItemAdapter;
    .end local v4    # "space":Landroid/view/View;
    :cond_e4
    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setBackgroundColor(I)V

    goto/16 :goto_5c

    .line 532
    .restart local v4    # "space":Landroid/view/View;
    :cond_e9
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_85

    .line 546
    .restart local v0    # "cancel":Landroid/widget/ListView;
    .restart local v1    # "cancelAdapter":Lcom/localytics/android/TestModeListView$CancelItemAdapter;
    :cond_ed
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_ce
.end method
