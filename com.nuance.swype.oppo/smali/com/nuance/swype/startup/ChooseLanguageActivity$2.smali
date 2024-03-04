.class final Lcom/nuance/swype/startup/ChooseLanguageActivity$2;
.super Ljava/lang/Object;
.source "ChooseLanguageActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/startup/ChooseLanguageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/nuance/swype/input/InputMethods$Language;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity$2;->c:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 85
    check-cast p1, Lcom/nuance/swype/input/InputMethods$Language;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/nuance/swype/input/InputMethods$Language;

    .end local p2    # "x1":Ljava/lang/Object;
    iget-object v0, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity$2;->c:Ljava/text/Collator;

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$Language;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
