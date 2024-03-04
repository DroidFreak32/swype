.class public final enum Ltwitter4j/OEmbedRequest$Align;
.super Ljava/lang/Enum;
.source "OEmbedRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltwitter4j/OEmbedRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Align"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ltwitter4j/OEmbedRequest$Align;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ltwitter4j/OEmbedRequest$Align;

.field public static final enum CENTER:Ltwitter4j/OEmbedRequest$Align;

.field public static final enum LEFT:Ltwitter4j/OEmbedRequest$Align;

.field public static final enum NONE:Ltwitter4j/OEmbedRequest$Align;

.field public static final enum RIGHT:Ltwitter4j/OEmbedRequest$Align;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 111
    new-instance v0, Ltwitter4j/OEmbedRequest$Align;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v2}, Ltwitter4j/OEmbedRequest$Align;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltwitter4j/OEmbedRequest$Align;->LEFT:Ltwitter4j/OEmbedRequest$Align;

    .line 112
    new-instance v0, Ltwitter4j/OEmbedRequest$Align;

    const-string v1, "CENTER"

    invoke-direct {v0, v1, v3}, Ltwitter4j/OEmbedRequest$Align;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltwitter4j/OEmbedRequest$Align;->CENTER:Ltwitter4j/OEmbedRequest$Align;

    .line 113
    new-instance v0, Ltwitter4j/OEmbedRequest$Align;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v4}, Ltwitter4j/OEmbedRequest$Align;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltwitter4j/OEmbedRequest$Align;->RIGHT:Ltwitter4j/OEmbedRequest$Align;

    .line 114
    new-instance v0, Ltwitter4j/OEmbedRequest$Align;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v5}, Ltwitter4j/OEmbedRequest$Align;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltwitter4j/OEmbedRequest$Align;->NONE:Ltwitter4j/OEmbedRequest$Align;

    .line 110
    const/4 v0, 0x4

    new-array v0, v0, [Ltwitter4j/OEmbedRequest$Align;

    sget-object v1, Ltwitter4j/OEmbedRequest$Align;->LEFT:Ltwitter4j/OEmbedRequest$Align;

    aput-object v1, v0, v2

    sget-object v1, Ltwitter4j/OEmbedRequest$Align;->CENTER:Ltwitter4j/OEmbedRequest$Align;

    aput-object v1, v0, v3

    sget-object v1, Ltwitter4j/OEmbedRequest$Align;->RIGHT:Ltwitter4j/OEmbedRequest$Align;

    aput-object v1, v0, v4

    sget-object v1, Ltwitter4j/OEmbedRequest$Align;->NONE:Ltwitter4j/OEmbedRequest$Align;

    aput-object v1, v0, v5

    sput-object v0, Ltwitter4j/OEmbedRequest$Align;->$VALUES:[Ltwitter4j/OEmbedRequest$Align;

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
    .line 110
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ltwitter4j/OEmbedRequest$Align;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 110
    const-class v0, Ltwitter4j/OEmbedRequest$Align;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ltwitter4j/OEmbedRequest$Align;

    return-object v0
.end method

.method public static values()[Ltwitter4j/OEmbedRequest$Align;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Ltwitter4j/OEmbedRequest$Align;->$VALUES:[Ltwitter4j/OEmbedRequest$Align;

    invoke-virtual {v0}, [Ltwitter4j/OEmbedRequest$Align;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltwitter4j/OEmbedRequest$Align;

    return-object v0
.end method
