.class public Lcom/nuance/swype/input/view/GripPad;
.super Landroid/widget/LinearLayout;
.source "GripPad.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/view/GripPad$DragGestureListener;,
        Lcom/nuance/swype/input/view/GripPad$GripButtonListener;
    }
.end annotation


# static fields
.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private animManager:Lcom/nuance/swype/view/ShowHideAnimManager;

.field private grip:Landroid/view/View;

.field private listener:Lcom/nuance/swype/input/view/GripPad$GripButtonListener;

.field private minus:Landroid/view/View;

.field private plus:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "GripPad"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/view/GripPad;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/view/GripPad;)Lcom/nuance/swype/input/view/GripPad$GripButtonListener;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/view/GripPad;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/nuance/swype/input/view/GripPad;->listener:Lcom/nuance/swype/input/view/GripPad$GripButtonListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/view/GripPad;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/view/GripPad;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/nuance/swype/input/view/GripPad;->grip:Landroid/view/View;

    return-object v0
.end method

.method private showButton(Landroid/view/View;Z)V
    .locals 2
    .param p1, "button"    # Landroid/view/View;
    .param p2, "show"    # Z

    .prologue
    const/16 v1, 0x8

    .line 141
    if-eqz p2, :cond_1

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/nuance/swype/input/view/GripPad;->animManager:Lcom/nuance/swype/view/ShowHideAnimManager;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/nuance/swype/input/view/GripPad;->animManager:Lcom/nuance/swype/view/ShowHideAnimManager;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/view/ShowHideAnimManager;->show(Landroid/view/View;)V

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/nuance/swype/input/view/GripPad;->animManager:Lcom/nuance/swype/view/ShowHideAnimManager;

    if-eqz v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/nuance/swype/input/view/GripPad;->animManager:Lcom/nuance/swype/view/ShowHideAnimManager;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/view/ShowHideAnimManager;->hide(Landroid/view/View;)V

    goto :goto_0

    .line 155
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 92
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 94
    sget v0, Lcom/nuance/swype/input/R$id;->grip:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/view/GripPad;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/view/GripPad;->grip:Landroid/view/View;

    .line 95
    sget v0, Lcom/nuance/swype/input/R$id;->minus:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/view/GripPad;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/view/GripPad;->minus:Landroid/view/View;

    .line 96
    sget v0, Lcom/nuance/swype/input/R$id;->plus:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/view/GripPad;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/view/GripPad;->plus:Landroid/view/View;

    .line 117
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 118
    new-instance v0, Lcom/nuance/swype/view/ShowHideAnimManager;

    invoke-virtual {p0}, Lcom/nuance/swype/input/view/GripPad;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nuance/swype/view/ShowHideAnimManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/input/view/GripPad;->animManager:Lcom/nuance/swype/view/ShowHideAnimManager;

    .line 119
    iget-object v0, p0, Lcom/nuance/swype/input/view/GripPad;->animManager:Lcom/nuance/swype/view/ShowHideAnimManager;

    new-instance v1, Lcom/nuance/swype/input/view/GripPad$2;

    invoke-direct {v1, p0}, Lcom/nuance/swype/input/view/GripPad$2;-><init>(Lcom/nuance/swype/input/view/GripPad;)V

    invoke-virtual {v0, v1}, Lcom/nuance/swype/view/ShowHideAnimManager;->setListener(Lcom/nuance/swype/view/ShowHideAnimManager$Listener;)V

    .line 136
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/view/GripPad;->showSizeButtonsNoAnim(Z)V

    .line 137
    invoke-virtual {p0, v2, v2}, Lcom/nuance/swype/input/view/GripPad;->setGripIsDrag(ZZ)V

    .line 138
    return-void
.end method

.method public setDragListener(Lcom/nuance/swype/input/view/GripPad$GripButtonListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/nuance/swype/input/view/GripPad$GripButtonListener;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/nuance/swype/input/view/GripPad;->listener:Lcom/nuance/swype/input/view/GripPad$GripButtonListener;

    .line 180
    return-void
.end method

.method public setGripIsDrag(ZZ)V
    .locals 4
    .param p1, "isDrag"    # Z
    .param p2, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 59
    iget-object v0, p0, Lcom/nuance/swype/input/view/GripPad;->grip:Landroid/view/View;

    if-nez v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 62
    :cond_0
    if-eqz p1, :cond_2

    .line 63
    iget-object v0, p0, Lcom/nuance/swype/input/view/GripPad;->grip:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/nuance/swype/input/view/GripPad;->grip:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 65
    if-eqz p2, :cond_1

    .line 66
    iget-object v0, p0, Lcom/nuance/swype/input/view/GripPad;->grip:Landroid/view/View;

    new-instance v1, Lcom/nuance/swype/input/DragGesture;

    new-instance v2, Lcom/nuance/swype/input/view/GripPad$DragGestureListener;

    invoke-direct {v2, p0, v3}, Lcom/nuance/swype/input/view/GripPad$DragGestureListener;-><init>(Lcom/nuance/swype/input/view/GripPad;Lcom/nuance/swype/input/view/GripPad$1;)V

    invoke-direct {v1, v2}, Lcom/nuance/swype/input/DragGesture;-><init>(Lcom/nuance/swype/input/DragGesture$IDragGestureListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/view/GripPad;->grip:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/view/GripPad;->grip:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 72
    if-eqz p2, :cond_3

    .line 73
    iget-object v0, p0, Lcom/nuance/swype/input/view/GripPad;->grip:Landroid/view/View;

    new-instance v1, Lcom/nuance/swype/input/view/GripPad$1;

    invoke-direct {v1, p0}, Lcom/nuance/swype/input/view/GripPad$1;-><init>(Lcom/nuance/swype/input/view/GripPad;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 83
    :cond_3
    iget-object v0, p0, Lcom/nuance/swype/input/view/GripPad;->grip:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/nuance/swype/input/view/GripPad;->grip:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0
.end method

.method public showSizeButtons(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 166
    iget-object v0, p0, Lcom/nuance/swype/input/view/GripPad;->minus:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/nuance/swype/input/view/GripPad;->showButton(Landroid/view/View;Z)V

    .line 167
    iget-object v0, p0, Lcom/nuance/swype/input/view/GripPad;->plus:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/nuance/swype/input/view/GripPad;->showButton(Landroid/view/View;Z)V

    .line 168
    return-void
.end method

.method public showSizeButtonsNoAnim(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 174
    iget-object v3, p0, Lcom/nuance/swype/input/view/GripPad;->minus:Landroid/view/View;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/nuance/swype/input/view/GripPad;->plus:Landroid/view/View;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    return-void

    :cond_0
    move v0, v2

    .line 174
    goto :goto_0

    :cond_1
    move v1, v2

    .line 175
    goto :goto_1
.end method
