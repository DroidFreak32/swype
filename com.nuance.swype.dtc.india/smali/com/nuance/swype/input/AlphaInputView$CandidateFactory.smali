.class Lcom/nuance/swype/input/AlphaInputView$CandidateFactory;
.super Lcom/nuance/input/swypecorelib/XT9CoreInput$DefaultCandidateFactory;
.source "AlphaInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/AlphaInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CandidateFactory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/AlphaInputView$CandidateFactory$CandidateBehavior;
    }
.end annotation


# instance fields
.field private englishSubjectiveFirstPersonBehavior:Lcom/nuance/swype/input/AlphaInputView$CandidateFactory$CandidateBehavior;

.field private final parentView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/swype/input/AlphaInputView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nuance/swype/input/AlphaInputView;)V
    .locals 1
    .param p1, "view"    # Lcom/nuance/swype/input/AlphaInputView;

    .prologue
    .line 2834
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/XT9CoreInput$DefaultCandidateFactory;-><init>()V

    .line 2832
    sget-object v0, Lcom/nuance/swype/input/AlphaInputView$CandidateFactory$CandidateBehavior;->SWAP:Lcom/nuance/swype/input/AlphaInputView$CandidateFactory$CandidateBehavior;

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$CandidateFactory;->englishSubjectiveFirstPersonBehavior:Lcom/nuance/swype/input/AlphaInputView$CandidateFactory$CandidateBehavior;

    .line 2835
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$CandidateFactory;->parentView:Ljava/lang/ref/WeakReference;

    .line 2836
    return-void
.end method

.method private createEnglishTapCandidates(Lcom/nuance/swype/input/InputView;Ljava/util/List;Lcom/nuance/input/swypecorelib/Candidates$Source;)Lcom/nuance/input/swypecorelib/Candidates;
    .locals 7
    .param p1, "view"    # Lcom/nuance/swype/input/InputView;
    .param p3, "source"    # Lcom/nuance/input/swypecorelib/Candidates$Source;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/swype/input/InputView;",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/input/swypecorelib/WordCandidate;",
            ">;",
            "Lcom/nuance/input/swypecorelib/Candidates$Source;",
            ")",
            "Lcom/nuance/input/swypecorelib/Candidates;"
        }
    .end annotation

    .prologue
    .local p2, "wordCandidates":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/input/swypecorelib/WordCandidate;>;"
    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2846
    if-nez p2, :cond_1

    .line 2881
    :cond_0
    :goto_0
    return-object v2

    .line 2850
    :cond_1
    iget-boolean v3, p1, Lcom/nuance/swype/input/InputView;->autoCorrectionEnabled:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView$CandidateFactory;->englishSubjectiveFirstPersonBehavior:Lcom/nuance/swype/input/AlphaInputView$CandidateFactory$CandidateBehavior;

    sget-object v4, Lcom/nuance/swype/input/AlphaInputView$CandidateFactory$CandidateBehavior;->DISABLE:Lcom/nuance/swype/input/AlphaInputView$CandidateFactory$CandidateBehavior;

    if-eq v3, v4, :cond_0

    .line 2852
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_0

    .line 2853
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/input/swypecorelib/WordCandidate;

    .line 2854
    .local v0, "first":Lcom/nuance/input/swypecorelib/WordCandidate;
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WordCandidate;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WordCandidate;->isExact()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "i"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2855
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/input/swypecorelib/WordCandidate;

    .line 2856
    .local v1, "second":Lcom/nuance/input/swypecorelib/WordCandidate;
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "I"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2859
    sget-object v3, Lcom/nuance/swype/input/AlphaInputView$CandidateFactory$CandidateBehavior;->AUTO_CORRECTION:Lcom/nuance/swype/input/AlphaInputView$CandidateFactory$CandidateBehavior;

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView$CandidateFactory;->englishSubjectiveFirstPersonBehavior:Lcom/nuance/swype/input/AlphaInputView$CandidateFactory$CandidateBehavior;

    if-ne v3, v4, :cond_2

    .line 2863
    invoke-static {p2}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->ensureSecondIsDefault(Ljava/util/List;)V

    .line 2864
    new-instance v2, Lcom/nuance/input/swypecorelib/Candidates;

    invoke-direct {v2, p2, p3}, Lcom/nuance/input/swypecorelib/Candidates;-><init>(Ljava/util/List;Lcom/nuance/input/swypecorelib/Candidates$Source;)V

    goto :goto_0

    .line 2867
    :cond_2
    sget-object v3, Lcom/nuance/swype/input/AlphaInputView$CandidateFactory$CandidateBehavior;->SWAP:Lcom/nuance/swype/input/AlphaInputView$CandidateFactory$CandidateBehavior;

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView$CandidateFactory;->englishSubjectiveFirstPersonBehavior:Lcom/nuance/swype/input/AlphaInputView$CandidateFactory$CandidateBehavior;

    if-ne v3, v4, :cond_0

    .line 2873
    invoke-interface {p2, v5, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2874
    invoke-interface {p2, v6, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2875
    new-instance v2, Lcom/nuance/input/swypecorelib/Candidates;

    invoke-direct {v2, p2, p3, v5, v5}, Lcom/nuance/input/swypecorelib/Candidates;-><init>(Ljava/util/List;Lcom/nuance/input/swypecorelib/Candidates$Source;II)V

    goto :goto_0
.end method

.method private static hasLang(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "langRegionCode"    # Ljava/lang/String;
    .param p1, "lang"    # Ljava/lang/String;

    .prologue
    .line 2892
    const/16 v1, 0x2d

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 2893
    .local v0, "end":I
    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    .line 2894
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2896
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public createCandidates(Ljava/util/List;Lcom/nuance/input/swypecorelib/Candidates$Source;)Lcom/nuance/input/swypecorelib/Candidates;
    .locals 5
    .param p2, "source"    # Lcom/nuance/input/swypecorelib/Candidates$Source;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/input/swypecorelib/WordCandidate;",
            ">;",
            "Lcom/nuance/input/swypecorelib/Candidates$Source;",
            ")",
            "Lcom/nuance/input/swypecorelib/Candidates;"
        }
    .end annotation

    .prologue
    .line 2901
    .local p1, "wordCandidates":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/input/swypecorelib/WordCandidate;>;"
    const/4 v1, 0x0

    .line 2902
    .local v1, "out":Lcom/nuance/input/swypecorelib/Candidates;
    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne p2, v3, :cond_0

    .line 2903
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView$CandidateFactory;->parentView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/AlphaInputView;

    .line 2904
    .local v2, "view":Lcom/nuance/swype/input/AlphaInputView;
    if-eqz v2, :cond_0

    .line 2905
    invoke-virtual {v2}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v0

    .line 2906
    .local v0, "lang":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/nuance/swype/input/InputMethods$Language;->mLangRegionCode:Ljava/lang/String;

    const-string/jumbo v4, "en"

    invoke-static {v3, v4}, Lcom/nuance/swype/input/AlphaInputView$CandidateFactory;->hasLang(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2907
    invoke-direct {p0, v2, p1, p2}, Lcom/nuance/swype/input/AlphaInputView$CandidateFactory;->createEnglishTapCandidates(Lcom/nuance/swype/input/InputView;Ljava/util/List;Lcom/nuance/input/swypecorelib/Candidates$Source;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v1

    .line 2911
    .end local v0    # "lang":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v2    # "view":Lcom/nuance/swype/input/AlphaInputView;
    :cond_0
    if-nez v1, :cond_1

    .line 2912
    invoke-super {p0, p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreInput$DefaultCandidateFactory;->createCandidates(Ljava/util/List;Lcom/nuance/input/swypecorelib/Candidates$Source;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v1

    .line 2914
    :cond_1
    return-object v1
.end method

.method public setEnglishSubjectiveFirstPersonBehavior(Lcom/nuance/swype/input/AlphaInputView$CandidateFactory$CandidateBehavior;)V
    .locals 0
    .param p1, "behavior"    # Lcom/nuance/swype/input/AlphaInputView$CandidateFactory$CandidateBehavior;

    .prologue
    .line 2839
    iput-object p1, p0, Lcom/nuance/swype/input/AlphaInputView$CandidateFactory;->englishSubjectiveFirstPersonBehavior:Lcom/nuance/swype/input/AlphaInputView$CandidateFactory$CandidateBehavior;

    .line 2840
    return-void
.end method
