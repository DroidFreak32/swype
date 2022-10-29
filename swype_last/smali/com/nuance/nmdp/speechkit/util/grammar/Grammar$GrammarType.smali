.class public final enum Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;
.super Ljava/lang/Enum;
.source "Grammar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmdp/speechkit/util/grammar/Grammar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GrammarType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

.field public static final enum CONTACTS:Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

.field public static final enum CUSTOMWORDS:Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

.field public static final enum HISTORY:Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

.field public static final enum INSTANT_ITEM_LIST:Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

.field public static final enum PREDEFINED_STATIC_GRAMMARS:Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

.field public static final enum URI:Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 18
    new-instance v0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

    const-string/jumbo v1, "CONTACTS"

    invoke-direct {v0, v1, v3}, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;->CONTACTS:Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

    .line 22
    new-instance v0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

    const-string/jumbo v1, "CUSTOMWORDS"

    invoke-direct {v0, v1, v4}, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;->CUSTOMWORDS:Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

    .line 26
    new-instance v0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

    const-string/jumbo v1, "HISTORY"

    invoke-direct {v0, v1, v5}, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;->HISTORY:Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

    .line 30
    new-instance v0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

    const-string/jumbo v1, "URI"

    invoke-direct {v0, v1, v6}, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;->URI:Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

    .line 34
    new-instance v0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

    const-string/jumbo v1, "PREDEFINED_STATIC_GRAMMARS"

    invoke-direct {v0, v1, v7}, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;->PREDEFINED_STATIC_GRAMMARS:Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

    .line 38
    new-instance v0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

    const-string/jumbo v1, "INSTANT_ITEM_LIST"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;->INSTANT_ITEM_LIST:Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

    .line 14
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

    sget-object v1, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;->CONTACTS:Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;->CUSTOMWORDS:Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;->HISTORY:Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;->URI:Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;->PREDEFINED_STATIC_GRAMMARS:Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;->INSTANT_ITEM_LIST:Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;->$VALUES:[Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

    return-object v0
.end method

.method public static values()[Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;
    .registers 1

    .prologue
    .line 14
    sget-object v0, Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;->$VALUES:[Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

    invoke-virtual {v0}, [Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/nmdp/speechkit/util/grammar/Grammar$GrammarType;

    return-object v0
.end method
