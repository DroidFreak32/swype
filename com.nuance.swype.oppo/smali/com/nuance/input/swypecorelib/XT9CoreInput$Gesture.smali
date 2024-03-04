.class public Lcom/nuance/input/swypecorelib/XT9CoreInput$Gesture;
.super Ljava/lang/Object;
.source "XT9CoreInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/input/swypecorelib/XT9CoreInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Gesture"
.end annotation


# static fields
.field private static final DEFAULT_FREQUENCY:B = -0x1t


# instance fields
.field public frequency:B

.field public path:[C

.field public returnValue:S


# direct methods
.method public constructor <init>(S[C)V
    .locals 1
    .param p1, "returnValue"    # S
    .param p2, "gesture"    # [C

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput$Gesture;->frequency:B

    .line 180
    iput-short p1, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput$Gesture;->returnValue:S

    .line 181
    iput-object p2, p0, Lcom/nuance/input/swypecorelib/XT9CoreInput$Gesture;->path:[C

    .line 182
    return-void
.end method
