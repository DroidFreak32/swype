.class public final Lcom/nuance/swype/startup/ComboBox$IconArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ComboBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/startup/ComboBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IconArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private selectedItemResourceId:I

.field private textViewResourceId:I

.field private synthetic this$0:Lcom/nuance/swype/startup/ComboBox;


# direct methods
.method public constructor <init>(Lcom/nuance/swype/startup/ComboBox;Landroid/content/Context;IILjava/util/List;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "textViewResourceId"    # I
    .param p4, "selectedItemResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 449
    .local p0, "this":Lcom/nuance/swype/startup/ComboBox$IconArrayAdapter;, "Lcom/nuance/swype/startup/ComboBox$IconArrayAdapter<TT;>;"
    .local p5, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iput-object p1, p0, Lcom/nuance/swype/startup/ComboBox$IconArrayAdapter;->this$0:Lcom/nuance/swype/startup/ComboBox;

    .line 450
    invoke-direct {p0, p2, p3, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 451
    iput p3, p0, Lcom/nuance/swype/startup/ComboBox$IconArrayAdapter;->textViewResourceId:I

    .line 452
    iput p4, p0, Lcom/nuance/swype/startup/ComboBox$IconArrayAdapter;->selectedItemResourceId:I

    .line 453
    return-void
.end method

.method private getCustomView$70316aed(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "reverse"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 467
    .local p0, "this":Lcom/nuance/swype/startup/ComboBox$IconArrayAdapter;, "Lcom/nuance/swype/startup/ComboBox$IconArrayAdapter<TT;>;"
    iget-object v4, p0, Lcom/nuance/swype/startup/ComboBox$IconArrayAdapter;->this$0:Lcom/nuance/swype/startup/ComboBox;

    invoke-static {v4}, Lcom/nuance/swype/startup/ComboBox;->access$100(Lcom/nuance/swype/startup/ComboBox;)I

    move-result v0

    .line 468
    .local v0, "addNewItemPos":I
    invoke-virtual {p0}, Lcom/nuance/swype/startup/ComboBox$IconArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 472
    iget v5, p0, Lcom/nuance/swype/startup/ComboBox$IconArrayAdapter;->textViewResourceId:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 473
    .local v3, "row":Landroid/view/View;
    const v4, 0x1020014

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 474
    .local v2, "label":Landroid/widget/TextView;
    const v4, 0x1020006

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 475
    .local v1, "icon":Landroid/widget/ImageView;
    invoke-virtual {p0, p1}, Lcom/nuance/swype/startup/ComboBox$IconArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 477
    iget-object v4, p0, Lcom/nuance/swype/startup/ComboBox$IconArrayAdapter;->this$0:Lcom/nuance/swype/startup/ComboBox;

    invoke-static {v4}, Lcom/nuance/swype/startup/ComboBox;->access$200(Lcom/nuance/swype/startup/ComboBox;)Lcom/nuance/swype/startup/ComboBox$ComboSpinner;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/startup/ComboBox$ComboSpinner;->getSelectedItemPosition()I

    move-result v4

    if-ne p1, v4, :cond_2

    if-eq p1, v0, :cond_2

    if-eqz v1, :cond_2

    .line 479
    iget v4, p0, Lcom/nuance/swype/startup/ComboBox$IconArrayAdapter;->selectedItemResourceId:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 487
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    .line 488
    invoke-static {}, Lcom/nuance/swype/widget/directional/DirectionalUtil;->isCurrentlyRtl()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 489
    const/high16 v4, 0x43340000    # 180.0f

    invoke-virtual {v3, v4}, Landroid/view/View;->setRotationY(F)V

    .line 492
    :cond_1
    return-object v3

    .line 480
    :cond_2
    iget-object v4, p0, Lcom/nuance/swype/startup/ComboBox$IconArrayAdapter;->this$0:Lcom/nuance/swype/startup/ComboBox;

    invoke-static {v4}, Lcom/nuance/swype/startup/ComboBox;->access$200(Lcom/nuance/swype/startup/ComboBox;)Lcom/nuance/swype/startup/ComboBox$ComboSpinner;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/startup/ComboBox$ComboSpinner;->getSelectedItemPosition()I

    move-result v4

    if-eq p1, v4, :cond_3

    if-eq p1, v0, :cond_3

    if-eqz v1, :cond_3

    .line 482
    iget v4, p0, Lcom/nuance/swype/startup/ComboBox$IconArrayAdapter;->selectedItemResourceId:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 483
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 484
    :cond_3
    if-ne p1, v0, :cond_0

    if-eqz v1, :cond_0

    .line 485
    sget v4, Lcom/nuance/swype/input/R$drawable;->ic_btn_plus:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public final getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 457
    .local p0, "this":Lcom/nuance/swype/startup/ComboBox$IconArrayAdapter;, "Lcom/nuance/swype/startup/ComboBox$IconArrayAdapter<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0}, Lcom/nuance/swype/startup/ComboBox$IconArrayAdapter;->getCustomView$70316aed(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 462
    .local p0, "this":Lcom/nuance/swype/startup/ComboBox$IconArrayAdapter;, "Lcom/nuance/swype/startup/ComboBox$IconArrayAdapter<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, v0}, Lcom/nuance/swype/startup/ComboBox$IconArrayAdapter;->getCustomView$70316aed(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
