.class public final enum Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;
.super Ljava/lang/Enum;
.source "Data.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmdp/speechkit/util/dataupload/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

.field public static final enum CONTACTS:Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

.field public static final enum CUSTOMWORDS:Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

.field public static final enum HISTORY:Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

    const-string/jumbo v1, "CONTACTS"

    invoke-direct {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;->CONTACTS:Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

    .line 27
    new-instance v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

    const-string/jumbo v1, "CUSTOMWORDS"

    invoke-direct {v0, v1, v3}, Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;->CUSTOMWORDS:Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

    .line 31
    new-instance v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

    const-string/jumbo v1, "HISTORY"

    invoke-direct {v0, v1, v4}, Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;->HISTORY:Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

    sget-object v1, Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;->CONTACTS:Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;->CUSTOMWORDS:Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;->HISTORY:Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;->$VALUES:[Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

    return-object v0
.end method

.method public static values()[Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;->$VALUES:[Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

    invoke-virtual {v0}, [Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

    return-object v0
.end method
