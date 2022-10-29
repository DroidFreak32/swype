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
    .registers 1

    .prologue
    .line 21
    const-string/jumbo v0, "GripPad"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/view/GripPad;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/view/GripPad;)Lcom/nuance/swype/input/view/GripPad$GripButtonListener;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/view/GripPad;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/nuance/swype/input/view/GripPad;->listener:Lcom/nuance/swype/input/view/GripPad$GripButtonListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/view/GripPad;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/view/GripPad;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/nuance/swype/input/view/GripPad;->grip:Landroid/view/View;

    return-object v0
.end method

.method private showButton(Landroid/view/View;Z)V
    .registers 6
    .param p1, "button"    # Landroid/view/View;
    .param p2, "show"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 133
    if-eqz p2, :cond_18

    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_17

    .line 135
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/nuance/swype/input/view/GripPad;->animManager:Lcom/nuance/swype/view/ShowHideAnimManager;

    if-eqz v0, :cond_17

    .line 138
    iget-object v0, p0, Lcom/nuance/swype/input/view/GripPad;->animManager:Lcom/nuance/swype/view/ShowHideAnimManager;

    .line 1130
    invoke-virtual {v0, p1, v1}, Lcom/nuance/swype/view/ShowHideAnimManager;->show(Landroid/view/View;Z)V

    .line 151
    :cond_17
    :goto_17
    return-void

    .line 142
    :cond_18
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_17

    .line 143
    iget-object v0, p0, Lcom/nuance/swype/input/view/GripPad;->animManager:Lcom/nuance/swype/view/ShowHideAnimManager;

    if-eqz v0, :cond_28

    .line 145
    iget-object v0, p0, Lcom/nuance/swype/input/view/GripPad;->animManager:Lcom/nuance/swype/view/ShowHideAnimManager;

    .line 1158
    invoke-virtual {v0, p1, v1}, Lcom/nuance/swype/view/ShowHideAnimManager;->hide(Landroid/view/View;Z)V

    goto :goto_17

    .line 147
    :cond_28
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_17
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 97
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 99
    sget v2, Lcom/nuance/swype/input/R$id;->grip:I

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/view/GripPad;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/view/GripPad;->grip:Landroid/view/View;

    .line 100
    sget v2, Lcom/nuance/swype/input/R$id;->minus:I

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/view/GripPad;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/view/GripPad;->minus:Landroid/view/View;

    .line 101
    sget v2, Lcom/nuance/swype/input/R$id;->plus:I

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/view/GripPad;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/view/GripPad;->plus:Landroid/view/View;

    .line 123
    invoke-virtual {p0}, Lcom/nuance/swype/input/view/GripPad;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x10b0000

    invoke-static {v2, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    .line 124
    .local v1, "animShow":Landroid/animation/Animator;
    invoke-virtual {p0}, Lcom/nuance/swype/input/view/GripPad;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10b0001

    invoke-static {v2, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 125
    .local v0, "animHide":Landroid/animation/Animator;
    new-instance v2, Lcom/nuance/swype/view/ShowHideAnimManager;

    invoke-direct {v2, v1, v0}, Lcom/nuance/swype/view/ShowHideAnimManager;-><init>(Landroid/animation/Animator;Landroid/animation/Animator;)V

    iput-object v2, p0, Lcom/nuance/swype/input/view/GripPad;->animManager:Lcom/nuance/swype/view/ShowHideAnimManager;

    .line 126
    iget-object v2, p0, Lcom/nuance/swype/input/view/GripPad;->animManager:Lcom/nuance/swype/view/ShowHideAnimManager;

    invoke-static {}, Lcom/nuance/swype/view/ShowHideAnimManager;->createDefaultListener$378274fe()Lcom/nuance/swype/view/ShowHideAnimManager$Listener;

    move-result-object v3

    .line 1080
    iput-object v3, v2, Lcom/nuance/swype/view/ShowHideAnimManager;->listener:Lcom/nuance/swype/view/ShowHideAnimManager$Listener;

    .line 128
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/view/GripPad;->showSizeButtonsNoAnim(Z)V

    .line 129
    invoke-virtual {p0, v4, v4}, Lcom/nuance/swype/input/view/GripPad;->setGripIsDrag(ZZ)V

    .line 130
    return-void
.end method

.method public setDragListener(Lcom/nuance/swype/input/view/GripPad$GripButtonListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/nuance/swype/input/view/GripPad$GripButtonListener;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/nuance/swype/input/view/GripPad;->listener:Lcom/nuance/swype/input/view/GripPad$GripButtonListener;

    .line 172
    return-void
.end method

.method public setGripIsDrag(ZZ)V
    .registers 7
    .param p1, "isDrag"    # Z
    .param p2, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 64
    iget-object v0, p0, Lcom/nuance/swype/input/view/GripPad;->grip:Landroid/view/View;

    if-nez v0, :cond_7

    .line 92
    :goto_6
    return-void

    .line 67
    :cond_7
    if-eqz p1, :cond_2b

    .line 68
    iget-object v0, p0, Lcom/nuance/swype/input/view/GripPad;->grip:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/nuance/swype/input/view/GripPad;->grip:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 70
    if-eqz p2, :cond_25

    .line 71
    iget-object v0, p0, Lcom/nuance/swype/input/view/GripPad;->grip:Landroid/view/View;

    new-instance v1, Lcom/nuance/swype/input/DragGesture;

    new-instance v2, Lcom/nuance/swype/input/view/GripPad$DragGestureListener;

    invoke-direct {v2, p0, v3}, Lcom/nuance/swype/input/view/GripPad$DragGestureListener;-><init>(Lcom/nuance/swype/input/view/GripPad;Lcom/nuance/swype/input/view/GripPad$1;)V

    invoke-direct {v1, v2}, Lcom/nuance/swype/input/DragGesture;-><init>(Lcom/nuance/swype/input/DragGesture$IDragGestureListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_6

    .line 73
    :cond_25
    iget-object v0, p0, Lcom/nuance/swype/input/view/GripPad;->grip:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_6

    .line 76
    :cond_2b
    iget-object v0, p0, Lcom/nuance/swype/input/view/GripPad;->grip:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 77
    if-eqz p2, :cond_3d

    .line 78
    iget-object v0, p0, Lcom/nuance/swype/input/view/GripPad;->grip:Landroid/view/View;

    new-instance v1, Lcom/nuance/swype/input/view/GripPad$1;

    invoke-direct {v1, p0}, Lcom/nuance/swype/input/view/GripPad$1;-><init>(Lcom/nuance/swype/input/view/GripPad;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    .line 88
    :cond_3d
    iget-object v0, p0, Lcom/nuance/swype/input/view/GripPad;->grip:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/nuance/swype/input/view/GripPad;->grip:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    goto :goto_6
.end method

.method public showSizeButtons(Z)V
    .registers 3
    .param p1, "show"    # Z

    .prologue
    .line 158
    iget-object v0, p0, Lcom/nuance/swype/input/view/GripPad;->minus:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/nuance/swype/input/view/GripPad;->showButton(Landroid/view/View;Z)V

    .line 159
    iget-object v0, p0, Lcom/nuance/swype/input/view/GripPad;->plus:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/nuance/swype/input/view/GripPad;->showButton(Landroid/view/View;Z)V

    .line 160
    return-void
.end method

.method public showSizeButtonsNoAnim(Z)V
    .registers 6
    .param p1, "show"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 166
    iget-object v3, p0, Lcom/nuance/swype/input/view/GripPad;->minus:Landroid/view/View;

    if-eqz p1, :cond_13

    move v0, v1

    :goto_8
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/nuance/swype/input/view/GripPad;->plus:Landroid/view/View;

    if-eqz p1, :cond_15

    :goto_f
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 168
    return-void

    :cond_13
    move v0, v2

    .line 166
    goto :goto_8

    :cond_15
    move v1, v2

    .line 167
    goto :goto_f
.end method
