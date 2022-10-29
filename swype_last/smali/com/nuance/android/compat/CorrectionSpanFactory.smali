.class public Lcom/nuance/android/compat/CorrectionSpanFactory;
.super Ljava/lang/Object;
.source "CorrectionSpanFactory.java"


# static fields
.field private static final hasSuggestionSpan:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const-string/jumbo v0, "android.text.style.SuggestionSpan"

    .line 24
    invoke-static {v0}, Lcom/nuance/android/compat/CompatUtil;->doesClassExist(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/nuance/android/compat/CorrectionSpanFactory;->hasSuggestionSpan:Ljava/lang/Boolean;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createSpan(Landroid/content/Context;II)Landroid/text/ParcelableSpan;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "underlineColor"    # I
    .param p3, "underlineThickness"    # I

    .prologue
    .line 54
    sget-object v0, Lcom/nuance/android/compat/CorrectionSpanFactory;->hasSuggestionSpan:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_e

    .line 55
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 58
    :goto_d
    return-object v0

    :cond_e
    invoke-static {p1, p2, p3}, Lcom/nuance/android/compat/CorrectionSpan;->createCorrectionSpan(Landroid/content/Context;II)Lcom/nuance/android/compat/CorrectionSpan;

    move-result-object v0

    goto :goto_d
.end method
