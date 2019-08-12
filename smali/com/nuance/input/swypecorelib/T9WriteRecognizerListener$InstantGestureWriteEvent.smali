.class public Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$InstantGestureWriteEvent;
.super Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;
.source "T9WriteRecognizerListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstantGestureWriteEvent"
.end annotation


# instance fields
.field public final mCandidates:Lcom/nuance/input/swypecorelib/Candidates;

.field public final mGestureChar:C


# direct methods
.method public constructor <init>(CLcom/nuance/input/swypecorelib/Candidates;)V
    .locals 2
    .param p1, "gestureChar"    # C
    .param p2, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 90
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;-><init>(ILjava/lang/Object;)V

    .line 91
    iput-char p1, p0, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$InstantGestureWriteEvent;->mGestureChar:C

    .line 92
    iput-object p2, p0, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$InstantGestureWriteEvent;->mCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 93
    return-void
.end method
