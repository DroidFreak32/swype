.class public Lcom/nuance/swype/startup/ComboBox;
.super Landroid/widget/LinearLayout;
.source "ComboBox.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/startup/ComboBox$ComboSpinner;,
        Lcom/nuance/swype/startup/ComboBox$ComboSavedState;,
        Lcom/nuance/swype/startup/ComboBox$ComboBoxEditText;,
        Lcom/nuance/swype/startup/ComboBox$IconArrayAdapter;
    }
.end annotation


# instance fields
.field private addNewItemText:Ljava/lang/String;

.field private currentControl:I

.field private currentItemText:Ljava/lang/String;

.field private currentItemTextPos:I

.field private editActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private editFocusListener:Landroid/view/View$OnFocusChangeListener;

.field private final editableItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ignoreSelection:Z

.field private lastSelectedIndex:I

.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEditText:Landroid/widget/EditText;

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSpinner:Lcom/nuance/swype/startup/ComboBox$ComboSpinner;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->mItems:Ljava/util/List;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->editableItems:Ljava/util/List;

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/startup/ComboBox;->currentControl:I

    .line 226
    new-instance v0, Lcom/nuance/swype/startup/ComboBox$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/ComboBox$1;-><init>(Lcom/nuance/swype/startup/ComboBox;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->editFocusListener:Landroid/view/View$OnFocusChangeListener;

    .line 241
    new-instance v0, Lcom/nuance/swype/startup/ComboBox$2;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/ComboBox$2;-><init>(Lcom/nuance/swype/startup/ComboBox;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->editActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 115
    invoke-direct {p0, p1}, Lcom/nuance/swype/startup/ComboBox;->setup(Landroid/content/Context;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->mItems:Ljava/util/List;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->editableItems:Ljava/util/List;

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/startup/ComboBox;->currentControl:I

    .line 226
    new-instance v0, Lcom/nuance/swype/startup/ComboBox$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/ComboBox$1;-><init>(Lcom/nuance/swype/startup/ComboBox;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->editFocusListener:Landroid/view/View$OnFocusChangeListener;

    .line 241
    new-instance v0, Lcom/nuance/swype/startup/ComboBox$2;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/ComboBox$2;-><init>(Lcom/nuance/swype/startup/ComboBox;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->editActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 126
    invoke-direct {p0, p1}, Lcom/nuance/swype/startup/ComboBox;->setup(Landroid/content/Context;)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 120
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->mItems:Ljava/util/List;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->editableItems:Ljava/util/List;

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/startup/ComboBox;->currentControl:I

    .line 226
    new-instance v0, Lcom/nuance/swype/startup/ComboBox$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/ComboBox$1;-><init>(Lcom/nuance/swype/startup/ComboBox;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->editFocusListener:Landroid/view/View$OnFocusChangeListener;

    .line 241
    new-instance v0, Lcom/nuance/swype/startup/ComboBox$2;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/ComboBox$2;-><init>(Lcom/nuance/swype/startup/ComboBox;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->editActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 121
    invoke-direct {p0, p1}, Lcom/nuance/swype/startup/ComboBox;->setup(Landroid/content/Context;)V

    .line 122
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/startup/ComboBox;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/startup/ComboBox;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/startup/ComboBox;)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/startup/ComboBox;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/nuance/swype/startup/ComboBox;->getAddNewItemPosition()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/nuance/swype/startup/ComboBox;)Lcom/nuance/swype/startup/ComboBox$ComboSpinner;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/startup/ComboBox;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->mSpinner:Lcom/nuance/swype/startup/ComboBox$ComboSpinner;

    return-object v0
.end method

.method private getAddNewItemPosition()I
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->addNewItemText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->mItems:Ljava/util/List;

    iget-object v1, p0, Lcom/nuance/swype/startup/ComboBox;->addNewItemText:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->mItems:Ljava/util/List;

    iget-object v1, p0, Lcom/nuance/swype/startup/ComboBox;->addNewItemText:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 323
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private setup(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v7, 0x8

    const/4 v6, -0x1

    .line 337
    new-instance v0, Lcom/nuance/swype/startup/ComboBox$ComboSpinner;

    invoke-direct {v0, p1}, Lcom/nuance/swype/startup/ComboBox$ComboSpinner;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->mSpinner:Lcom/nuance/swype/startup/ComboBox$ComboSpinner;

    .line 339
    new-instance v0, Lcom/nuance/swype/startup/ComboBox$IconArrayAdapter;

    invoke-virtual {p0}, Lcom/nuance/swype/startup/ComboBox;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$layout;->icon_spinner_dropdown_item:I

    sget v4, Lcom/nuance/swype/input/R$drawable;->ic_btn_check_startup:I

    iget-object v5, p0, Lcom/nuance/swype/startup/ComboBox;->mItems:Ljava/util/List;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/startup/ComboBox$IconArrayAdapter;-><init>(Lcom/nuance/swype/startup/ComboBox;Landroid/content/Context;IILjava/util/List;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 341
    iget-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->mSpinner:Lcom/nuance/swype/startup/ComboBox$ComboSpinner;

    iget-object v1, p0, Lcom/nuance/swype/startup/ComboBox;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/startup/ComboBox$ComboSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 342
    iget-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->mSpinner:Lcom/nuance/swype/startup/ComboBox$ComboSpinner;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/startup/ComboBox$ComboSpinner;->setOnItemSelectedEvenIfUnchangedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 343
    iget-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->mSpinner:Lcom/nuance/swype/startup/ComboBox$ComboSpinner;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/startup/ComboBox;->addView(Landroid/view/View;)V

    .line 344
    iget-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->mSpinner:Lcom/nuance/swype/startup/ComboBox$ComboSpinner;

    invoke-virtual {v0}, Lcom/nuance/swype/startup/ComboBox$ComboSpinner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 345
    invoke-static {}, Lcom/nuance/swype/widget/directional/DirectionalUtil;->isCurrentlyRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->mSpinner:Lcom/nuance/swype/startup/ComboBox$ComboSpinner;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Lcom/nuance/swype/startup/ComboBox$ComboSpinner;->setRotationY(F)V

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->mSpinner:Lcom/nuance/swype/startup/ComboBox$ComboSpinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/startup/ComboBox$ComboSpinner;->setVisibility(I)V

    .line 350
    new-instance v0, Lcom/nuance/swype/startup/ComboBox$ComboBoxEditText;

    invoke-direct {v0, p1, p0}, Lcom/nuance/swype/startup/ComboBox$ComboBoxEditText;-><init>(Landroid/content/Context;Lcom/nuance/swype/startup/ComboBox;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->mEditText:Landroid/widget/EditText;

    .line 351
    iget-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/startup/ComboBox;->addView(Landroid/view/View;)V

    .line 353
    iget-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->mEditText:Landroid/widget/EditText;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 355
    iget-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 356
    iget-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/nuance/swype/startup/ComboBox;->editFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 357
    iget-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/nuance/swype/startup/ComboBox;->editActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 358
    iget-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 359
    iget-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 360
    invoke-virtual {p0}, Lcom/nuance/swype/startup/ComboBox;->requestLayout()V

    .line 361
    return-void
.end method

.method private showEdit(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 259
    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/swype/startup/ComboBox;->currentControl:I

    .line 260
    iget-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->mSpinner:Lcom/nuance/swype/startup/ComboBox$ComboSpinner;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/nuance/swype/startup/ComboBox$ComboSpinner;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 264
    iget-object v1, p0, Lcom/nuance/swype/startup/ComboBox;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 265
    iget-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->mEditText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/nuance/swype/startup/ComboBox$3;

    invoke-direct {v1, p0}, Lcom/nuance/swype/startup/ComboBox$3;-><init>(Lcom/nuance/swype/startup/ComboBox;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 277
    return-void
.end method

.method private showSpinner()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 330
    iput v2, p0, Lcom/nuance/swype/startup/ComboBox;->currentControl:I

    .line 331
    iget-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->mEditText:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->mSpinner:Lcom/nuance/swype/startup/ComboBox$ComboSpinner;

    invoke-virtual {v0, v2}, Lcom/nuance/swype/startup/ComboBox$ComboSpinner;->setVisibility(I)V

    .line 333
    return-void
.end method


# virtual methods
.method public final getEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method public final getSelectedItem()Ljava/lang/String;
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->mSpinner:Lcom/nuance/swype/startup/ComboBox$ComboSpinner;

    iget-object v1, p0, Lcom/nuance/swype/startup/ComboBox;->mSpinner:Lcom/nuance/swype/startup/ComboBox$ComboSpinner;

    invoke-virtual {v1}, Lcom/nuance/swype/startup/ComboBox$ComboSpinner;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/startup/ComboBox$ComboSpinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final onCommitEditText()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 419
    iget v0, p0, Lcom/nuance/swype/startup/ComboBox;->currentControl:I

    if-ne v0, v3, :cond_4

    .line 420
    iget-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/startup/ComboBox;->mItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/startup/ComboBox;->addNewItemText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    if-eqz v0, :cond_6

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/nuance/swype/startup/ComboBox;->mItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget v1, p0, Lcom/nuance/swype/startup/ComboBox;->currentItemTextPos:I

    invoke-direct {p0}, Lcom/nuance/swype/startup/ComboBox;->getAddNewItemPosition()I

    move-result v2

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/nuance/swype/startup/ComboBox;->mItems:Ljava/util/List;

    iget v2, p0, Lcom/nuance/swype/startup/ComboBox;->currentItemTextPos:I

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/nuance/swype/startup/ComboBox;->mItems:Ljava/util/List;

    iget v2, p0, Lcom/nuance/swype/startup/ComboBox;->currentItemTextPos:I

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/swype/startup/ComboBox;->editableItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_2
    :goto_1
    iput v4, p0, Lcom/nuance/swype/startup/ComboBox;->currentItemTextPos:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->currentItemText:Ljava/lang/String;

    .line 421
    :cond_3
    invoke-direct {p0}, Lcom/nuance/swype/startup/ComboBox;->showSpinner()V

    .line 423
    :cond_4
    return-void

    .line 420
    :cond_5
    iget v1, p0, Lcom/nuance/swype/startup/ComboBox;->currentItemTextPos:I

    invoke-direct {p0}, Lcom/nuance/swype/startup/ComboBox;->getAddNewItemPosition()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/startup/ComboBox;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/nuance/swype/startup/ComboBox;->getAddNewItemPosition()I

    move-result v2

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/swype/startup/ComboBox;->editableItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-boolean v3, p0, Lcom/nuance/swype/startup/ComboBox;->ignoreSelection:Z

    iget-object v1, p0, Lcom/nuance/swype/startup/ComboBox;->mSpinner:Lcom/nuance/swype/startup/ComboBox$ComboSpinner;

    iget-object v2, p0, Lcom/nuance/swype/startup/ComboBox;->mItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/nuance/swype/startup/ComboBox$ComboSpinner;->setSelection(I)V

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_7

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/nuance/swype/startup/ComboBox;->currentItemTextPos:I

    invoke-direct {p0}, Lcom/nuance/swype/startup/ComboBox;->getAddNewItemPosition()I

    move-result v2

    if-eq v1, v2, :cond_7

    iget-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->mItems:Ljava/util/List;

    iget v1, p0, Lcom/nuance/swype/startup/ComboBox;->currentItemTextPos:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->mSpinner:Lcom/nuance/swype/startup/ComboBox$ComboSpinner;

    invoke-virtual {v0, v4}, Lcom/nuance/swype/startup/ComboBox$ComboSpinner;->setSelection(I)V

    iget-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_1

    :cond_7
    if-eqz v0, :cond_8

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/nuance/swype/startup/ComboBox;->mItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/nuance/swype/startup/ComboBox;->mItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget v2, p0, Lcom/nuance/swype/startup/ComboBox;->currentItemTextPos:I

    if-eq v1, v2, :cond_2

    iput-boolean v3, p0, Lcom/nuance/swype/startup/ComboBox;->ignoreSelection:Z

    iget-object v1, p0, Lcom/nuance/swype/startup/ComboBox;->mSpinner:Lcom/nuance/swype/startup/ComboBox$ComboSpinner;

    iget-object v2, p0, Lcom/nuance/swype/startup/ComboBox;->mItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/nuance/swype/startup/ComboBox$ComboSpinner;->setSelection(I)V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->mSpinner:Lcom/nuance/swype/startup/ComboBox$ComboSpinner;

    iget v1, p0, Lcom/nuance/swype/startup/ComboBox;->lastSelectedIndex:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/startup/ComboBox$ComboSpinner;->setSelection(I)V

    goto/16 :goto_1
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 135
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 136
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-boolean v0, p0, Lcom/nuance/swype/startup/ComboBox;->ignoreSelection:Z

    if-eqz v0, :cond_0

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/startup/ComboBox;->ignoreSelection:Z

    .line 213
    :goto_0
    return-void

    .line 202
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/startup/ComboBox;->getAddNewItemPosition()I

    move-result v0

    if-ne p3, v0, :cond_1

    .line 203
    const-string v0, ""

    iput-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->currentItemText:Ljava/lang/String;

    .line 204
    iput p3, p0, Lcom/nuance/swype/startup/ComboBox;->currentItemTextPos:I

    .line 205
    iget-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->currentItemText:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nuance/swype/startup/ComboBox;->showEdit(Ljava/lang/String;)V

    goto :goto_0

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->editableItems:Ljava/util/List;

    iget-object v1, p0, Lcom/nuance/swype/startup/ComboBox;->mSpinner:Lcom/nuance/swype/startup/ComboBox$ComboSpinner;

    invoke-virtual {v1, p3}, Lcom/nuance/swype/startup/ComboBox$ComboSpinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 207
    iget-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->mSpinner:Lcom/nuance/swype/startup/ComboBox$ComboSpinner;

    invoke-virtual {v0, p3}, Lcom/nuance/swype/startup/ComboBox$ComboSpinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->currentItemText:Ljava/lang/String;

    .line 208
    iput p3, p0, Lcom/nuance/swype/startup/ComboBox;->currentItemTextPos:I

    .line 209
    iget-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->currentItemText:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nuance/swype/startup/ComboBox;->showEdit(Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->mSpinner:Lcom/nuance/swype/startup/ComboBox$ComboSpinner;

    invoke-virtual {v0}, Lcom/nuance/swype/startup/ComboBox$ComboSpinner;->getSelectedItemPosition()I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/startup/ComboBox;->lastSelectedIndex:I

    goto :goto_0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 185
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/nuance/swype/startup/ComboBox;->onCommitEditText()V

    .line 187
    const/4 v0, 0x0

    .line 189
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 217
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 140
    instance-of v1, p1, Lcom/nuance/swype/startup/ComboBox$ComboSavedState;

    if-nez v1, :cond_0

    .line 141
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 164
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 144
    check-cast v0, Lcom/nuance/swype/startup/ComboBox$ComboSavedState;

    .line 145
    .local v0, "css":Lcom/nuance/swype/startup/ComboBox$ComboSavedState;
    invoke-virtual {v0}, Lcom/nuance/swype/startup/ComboBox$ComboSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 147
    iget-object v1, p0, Lcom/nuance/swype/startup/ComboBox;->editableItems:Ljava/util/List;

    iget-object v2, v0, Lcom/nuance/swype/startup/ComboBox$ComboSavedState;->editableItems:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 148
    iget-object v1, p0, Lcom/nuance/swype/startup/ComboBox;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 149
    iget-object v1, p0, Lcom/nuance/swype/startup/ComboBox;->mItems:Ljava/util/List;

    iget-object v2, v0, Lcom/nuance/swype/startup/ComboBox$ComboSavedState;->mItems:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 150
    iget-object v1, p0, Lcom/nuance/swype/startup/ComboBox;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 151
    iget-object v1, v0, Lcom/nuance/swype/startup/ComboBox$ComboSavedState;->addNewItemText:Ljava/lang/String;

    iput-object v1, p0, Lcom/nuance/swype/startup/ComboBox;->addNewItemText:Ljava/lang/String;

    .line 152
    iget v1, v0, Lcom/nuance/swype/startup/ComboBox$ComboSavedState;->lastSelectedIndex:I

    iput v1, p0, Lcom/nuance/swype/startup/ComboBox;->lastSelectedIndex:I

    .line 153
    iget v1, v0, Lcom/nuance/swype/startup/ComboBox$ComboSavedState;->currentItemTextPos:I

    iput v1, p0, Lcom/nuance/swype/startup/ComboBox;->currentItemTextPos:I

    .line 154
    iget-object v1, v0, Lcom/nuance/swype/startup/ComboBox$ComboSavedState;->currentItemText:Ljava/lang/String;

    iput-object v1, p0, Lcom/nuance/swype/startup/ComboBox;->currentItemText:Ljava/lang/String;

    .line 155
    iget v1, v0, Lcom/nuance/swype/startup/ComboBox$ComboSavedState;->currentControl:I

    iput v1, p0, Lcom/nuance/swype/startup/ComboBox;->currentControl:I

    .line 157
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/swype/startup/ComboBox;->ignoreSelection:Z

    .line 158
    iget-object v1, p0, Lcom/nuance/swype/startup/ComboBox;->mSpinner:Lcom/nuance/swype/startup/ComboBox$ComboSpinner;

    iget v2, v0, Lcom/nuance/swype/startup/ComboBox$ComboSavedState;->selectedItemPos:I

    invoke-virtual {v1, v2}, Lcom/nuance/swype/startup/ComboBox$ComboSpinner;->setSelection(I)V

    .line 159
    iget v1, p0, Lcom/nuance/swype/startup/ComboBox;->currentControl:I

    if-nez v1, :cond_1

    .line 160
    invoke-direct {p0}, Lcom/nuance/swype/startup/ComboBox;->showSpinner()V

    goto :goto_0

    .line 162
    :cond_1
    iget-object v1, v0, Lcom/nuance/swype/startup/ComboBox$ComboSavedState;->editTextText:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/nuance/swype/startup/ComboBox;->showEdit(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 168
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 169
    .local v1, "savedState":Landroid/os/Parcelable;
    new-instance v0, Lcom/nuance/swype/startup/ComboBox$ComboSavedState;

    invoke-direct {v0, v1}, Lcom/nuance/swype/startup/ComboBox$ComboSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 170
    .local v0, "s":Lcom/nuance/swype/startup/ComboBox$ComboSavedState;
    iget-object v2, p0, Lcom/nuance/swype/startup/ComboBox;->editableItems:Ljava/util/List;

    iput-object v2, v0, Lcom/nuance/swype/startup/ComboBox$ComboSavedState;->editableItems:Ljava/util/List;

    .line 171
    iget-object v2, p0, Lcom/nuance/swype/startup/ComboBox;->mItems:Ljava/util/List;

    iput-object v2, v0, Lcom/nuance/swype/startup/ComboBox$ComboSavedState;->mItems:Ljava/util/List;

    .line 172
    iget-object v2, p0, Lcom/nuance/swype/startup/ComboBox;->addNewItemText:Ljava/lang/String;

    iput-object v2, v0, Lcom/nuance/swype/startup/ComboBox$ComboSavedState;->addNewItemText:Ljava/lang/String;

    .line 173
    iget v2, p0, Lcom/nuance/swype/startup/ComboBox;->lastSelectedIndex:I

    iput v2, v0, Lcom/nuance/swype/startup/ComboBox$ComboSavedState;->lastSelectedIndex:I

    .line 174
    iget v2, p0, Lcom/nuance/swype/startup/ComboBox;->currentItemTextPos:I

    iput v2, v0, Lcom/nuance/swype/startup/ComboBox$ComboSavedState;->currentItemTextPos:I

    .line 175
    iget-object v2, p0, Lcom/nuance/swype/startup/ComboBox;->currentItemText:Ljava/lang/String;

    iput-object v2, v0, Lcom/nuance/swype/startup/ComboBox$ComboSavedState;->currentItemText:Ljava/lang/String;

    .line 176
    iget v2, p0, Lcom/nuance/swype/startup/ComboBox;->currentControl:I

    iput v2, v0, Lcom/nuance/swype/startup/ComboBox$ComboSavedState;->currentControl:I

    .line 177
    iget-object v2, p0, Lcom/nuance/swype/startup/ComboBox;->mSpinner:Lcom/nuance/swype/startup/ComboBox$ComboSpinner;

    invoke-virtual {v2}, Lcom/nuance/swype/startup/ComboBox$ComboSpinner;->getSelectedItemPosition()I

    move-result v2

    iput v2, v0, Lcom/nuance/swype/startup/ComboBox$ComboSavedState;->selectedItemPos:I

    .line 178
    iget-object v2, p0, Lcom/nuance/swype/startup/ComboBox;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/nuance/swype/startup/ComboBox$ComboSavedState;->editTextText:Ljava/lang/String;

    .line 180
    return-object v0
.end method

.method public setAddNewItemText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 406
    iput-object p1, p0, Lcom/nuance/swype/startup/ComboBox;->addNewItemText:Ljava/lang/String;

    .line 407
    iget-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->addNewItemText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->mItems:Ljava/util/List;

    iget-object v1, p0, Lcom/nuance/swype/startup/ComboBox;->addNewItemText:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->mItems:Ljava/util/List;

    iget-object v1, p0, Lcom/nuance/swype/startup/ComboBox;->addNewItemText:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    iget-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 411
    iget-object v0, p0, Lcom/nuance/swype/startup/ComboBox;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/nuance/swype/startup/ComboBox;->addNewItemText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 413
    :cond_0
    return-void
.end method

.method public setIgnoreSelection(Z)V
    .locals 0
    .param p1, "ignore"    # Z

    .prologue
    .line 426
    iput-boolean p1, p0, Lcom/nuance/swype/startup/ComboBox;->ignoreSelection:Z

    .line 427
    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 382
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 383
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 384
    .local v1, "item":Ljava/lang/String;
    iget-object v2, p0, Lcom/nuance/swype/startup/ComboBox;->mItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 385
    iget-object v2, p0, Lcom/nuance/swype/startup/ComboBox;->mItems:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 382
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 388
    .end local v1    # "item":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/startup/ComboBox;->addNewItemText:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/nuance/swype/startup/ComboBox;->mItems:Ljava/util/List;

    iget-object v3, p0, Lcom/nuance/swype/startup/ComboBox;->addNewItemText:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 389
    iget-object v2, p0, Lcom/nuance/swype/startup/ComboBox;->mItems:Ljava/util/List;

    iget-object v3, p0, Lcom/nuance/swype/startup/ComboBox;->addNewItemText:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    :cond_2
    iget v2, p0, Lcom/nuance/swype/startup/ComboBox;->currentControl:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 392
    iget v2, p0, Lcom/nuance/swype/startup/ComboBox;->currentItemTextPos:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/nuance/swype/startup/ComboBox;->currentItemTextPos:I

    .line 393
    iget v2, p0, Lcom/nuance/swype/startup/ComboBox;->currentItemTextPos:I

    iget-object v3, p0, Lcom/nuance/swype/startup/ComboBox;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_4

    iget-object v2, p0, Lcom/nuance/swype/startup/ComboBox;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    iput v2, p0, Lcom/nuance/swype/startup/ComboBox;->currentItemTextPos:I

    .line 395
    :cond_3
    iget-object v2, p0, Lcom/nuance/swype/startup/ComboBox;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 396
    return-void

    .line 393
    :cond_4
    iget v2, p0, Lcom/nuance/swype/startup/ComboBox;->currentItemTextPos:I

    goto :goto_1
.end method
