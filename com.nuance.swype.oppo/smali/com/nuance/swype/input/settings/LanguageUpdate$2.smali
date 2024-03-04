.class final Lcom/nuance/swype/input/settings/LanguageUpdate$2;
.super Ljava/lang/Object;
.source "LanguageUpdate.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/LanguageUpdate;
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
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$2;->c:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public final compare(Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/input/InputMethods$Language;)I
    .locals 3
    .param p1, "lhs"    # Lcom/nuance/swype/input/InputMethods$Language;
    .param p2, "rhs"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$2;->c:Ljava/text/Collator;

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$Language;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 100
    check-cast p1, Lcom/nuance/swype/input/InputMethods$Language;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/nuance/swype/input/InputMethods$Language;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/settings/LanguageUpdate$2;->compare(Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/input/InputMethods$Language;)I

    move-result v0

    return v0
.end method
