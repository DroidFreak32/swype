.class public Lcom/nuance/android/compat/CorrectionSpanFactory;
.super Ljava/lang/Object;
.source "CorrectionSpanFactory.java"


# static fields
.field private static final hasSuggestionSpan:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "android.text.style.SuggestionSpan"

    invoke-static {v0}, Lcom/nuance/android/compat/CompatUtil;->doesClassExist(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/nuance/android/compat/CorrectionSpanFactory;->hasSuggestionSpan:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createSpan(Landroid/content/Context;II)Landroid/text/ParcelableSpan;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "underlineColor"    # I
    .param p3, "underlineThickness"    # I

    .prologue
    .line 60
    sget-object v0, Lcom/nuance/android/compat/CorrectionSpanFactory;->hasSuggestionSpan:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 64
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/nuance/android/compat/CorrectionSpan;->createCorrectionSpan(Landroid/content/Context;II)Lcom/nuance/android/compat/CorrectionSpan;

    move-result-object v0

    goto :goto_0
.end method
