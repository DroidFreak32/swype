.class Lcom/nuance/swype/startup/ComboBox$ComboSpinner;
.super Landroid/widget/Spinner;
.source "ComboBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/startup/ComboBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ComboSpinner"
.end annotation


# instance fields
.field private listener:Landroid/widget/AdapterView$OnItemSelectedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 595
    invoke-direct {p0, p1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 596
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 599
    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 600
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 603
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 604
    return-void
.end method


# virtual methods
.method public final setOnItemSelectedEvenIfUnchangedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 616
    iput-object p1, p0, Lcom/nuance/swype/startup/ComboBox$ComboSpinner;->listener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 617
    return-void
.end method

.method public setSelection(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 608
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 609
    iget-object v0, p0, Lcom/nuance/swype/startup/ComboBox$ComboSpinner;->listener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/nuance/swype/startup/ComboBox$ComboSpinner;->listener:Landroid/widget/AdapterView$OnItemSelectedListener;

    const-wide/16 v4, 0x0

    move-object v2, v1

    move v3, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 611
    :cond_0
    return-void
.end method
