.class public Lcom/nuance/swype/input/emoji/finger/FingerStateManager$SimpleMapper;
.super Ljava/lang/Object;
.source "FingerStateManager.java"

# interfaces
.implements Lcom/nuance/swype/input/emoji/finger/Fingerable$FingerableMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/emoji/finger/FingerStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleMapper"
.end annotation


# instance fields
.field private globalItem:Lcom/nuance/swype/input/emoji/finger/Fingerable;

.field private final isDoubleTapSupported:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isDoubleTapSupported"    # Z

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/nuance/swype/input/emoji/finger/FingerStateManager$SimpleMapper$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/emoji/finger/FingerStateManager$SimpleMapper$1;-><init>(Lcom/nuance/swype/input/emoji/finger/FingerStateManager$SimpleMapper;)V

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerStateManager$SimpleMapper;->globalItem:Lcom/nuance/swype/input/emoji/finger/Fingerable;

    .line 29
    iput-boolean p2, p0, Lcom/nuance/swype/input/emoji/finger/FingerStateManager$SimpleMapper;->isDoubleTapSupported:Z

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;ZLcom/nuance/swype/input/emoji/finger/FingerStateManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lcom/nuance/swype/input/emoji/finger/FingerStateManager$1;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/emoji/finger/FingerStateManager$SimpleMapper;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/emoji/finger/FingerStateManager$SimpleMapper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/finger/FingerStateManager$SimpleMapper;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerStateManager$SimpleMapper;->isDoubleTapSupported:Z

    return v0
.end method


# virtual methods
.method public map(FF)Lcom/nuance/swype/input/emoji/finger/Fingerable;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerStateManager$SimpleMapper;->globalItem:Lcom/nuance/swype/input/emoji/finger/Fingerable;

    return-object v0
.end method
