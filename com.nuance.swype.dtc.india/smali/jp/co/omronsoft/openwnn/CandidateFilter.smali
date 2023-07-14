.class public Ljp/co/omronsoft/openwnn/CandidateFilter;
.super Ljava/lang/Object;
.source "CandidateFilter.java"


# static fields
.field public static final FILTER_EMOJI:I = 0x1

.field public static final FILTER_NONE:I

.field private static final PATTERN_EMOJI:Ljava/util/regex/Pattern;


# instance fields
.field private mFilter:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string/jumbo v0, "[\udbb8\udbb9\udbba\udbbb]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljp/co/omronsoft/openwnn/CandidateFilter;->PATTERN_EMOJI:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Ljp/co/omronsoft/openwnn/CandidateFilter;->mFilter:I

    return-void
.end method


# virtual methods
.method public isAllowed(Ljp/co/omronsoft/openwnn/WnnWord;)Z
    .locals 3
    .param p1, "word"    # Ljp/co/omronsoft/openwnn/WnnWord;

    .prologue
    const/4 v0, 0x1

    .line 62
    iget v1, p0, Ljp/co/omronsoft/openwnn/CandidateFilter;->mFilter:I

    if-nez v1, :cond_1

    .line 71
    :cond_0
    :goto_0
    return v0

    .line 65
    :cond_1
    iget v1, p0, Ljp/co/omronsoft/openwnn/CandidateFilter;->mFilter:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 66
    sget-object v1, Ljp/co/omronsoft/openwnn/CandidateFilter;->PATTERN_EMOJI:Ljava/util/regex/Pattern;

    iget-object v2, p1, Ljp/co/omronsoft/openwnn/WnnWord;->candidate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 67
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFilter(I)V
    .locals 0
    .param p1, "filter"    # I

    .prologue
    .line 50
    iput p1, p0, Ljp/co/omronsoft/openwnn/CandidateFilter;->mFilter:I

    .line 51
    return-void
.end method
