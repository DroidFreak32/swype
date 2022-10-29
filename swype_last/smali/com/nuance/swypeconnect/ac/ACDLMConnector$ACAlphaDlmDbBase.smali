.class public Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmDbBase;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAlphaDlmDb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACDLMConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ACAlphaDlmDbBase"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deleteCategory(I)V
    .registers 2

    return-void
.end method

.method public deleteCategoryLanguage(II)V
    .registers 3

    return-void
.end method

.method public exportAsEvents(ZI)V
    .registers 3

    return-void
.end method

.method public processEvent([B)V
    .registers 2

    return-void
.end method

.method public scanBegin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 6

    return-void
.end method

.method public scanBuffer([CIIIIIZZ)Z
    .registers 10

    const/4 v0, 0x0

    return v0
.end method

.method public scanEnd()V
    .registers 1

    return-void
.end method
