.class public Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$CandidatesWriteEvent;
.super Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;
.source "T9WriteRecognizerListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CandidatesWriteEvent"
.end annotation


# instance fields
.field public mCandidates:Lcom/nuance/input/swypecorelib/Candidates;

.field public mChCandidates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nuance/input/swypecorelib/Candidates;)V
    .locals 1
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 49
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;-><init>(ILjava/lang/Object;)V

    .line 50
    iput-object p1, p0, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$CandidatesWriteEvent;->mCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "candidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;-><init>(ILjava/lang/Object;)V

    .line 45
    iput-object p1, p0, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$CandidatesWriteEvent;->mChCandidates:Ljava/util/List;

    .line 46
    return-void
.end method
