.class public interface abstract Lcom/nuance/swype/input/CandidatesListView$CandidateListener;
.super Ljava/lang/Object;
.source "CandidatesListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/CandidatesListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CandidateListener"
.end annotation


# virtual methods
.method public abstract onCandidatesUpdated(Lcom/nuance/input/swypecorelib/Candidates;)V
.end method

.method public abstract onPressHoldCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;)Z
.end method

.method public abstract onSelectCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;)Z
.end method
