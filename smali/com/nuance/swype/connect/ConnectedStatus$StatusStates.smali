.class public final enum Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;
.super Ljava/lang/Enum;
.source "ConnectedStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/connect/ConnectedStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StatusStates"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

.field public static final enum BUILD_STATUS_LICENSED:Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

.field public static final enum BUILD_STATUS_UNLICENSED:Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

.field public static final enum CONNECTION_STATUS_DELAYED:Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

.field public static final enum CONNECTION_STATUS_INITIALIZATION_COMPLETE:Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

.field public static final enum CONNECTION_STATUS_OK:Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

.field public static final enum CONNECTION_STATUS_REFRESH_COMPLETED:Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

.field public static final enum CONNECTION_STATUS_REFRESH_DELAYED:Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

.field public static final enum CONNECTION_STATUS_REFRESH_PENDING:Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

.field public static final enum CONNECTION_STATUS_STALLED:Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

.field public static final enum CONNECTION_STATUS_STALLED_DOWNLOAD:Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

.field public static final enum CONNECTION_STATUS_STALLED_HTTP_ERROR:Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

.field public static final enum CONNECTION_STATUS_STALLED_JSON_PARSE:Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

.field public static final enum CONNECTION_STATUS_STALLED_PROTOCOL_EXCEPTION:Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

.field public static final enum CONNECTION_STATUS_STALLED_SSL:Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

.field public static final enum CONNECTION_STATUS_STALLED_UNKNOWN_RESPONSE:Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

.field public static final enum CONNECTION_STATUS_UNKNOWN:Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

.field private static final map:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private description:Ljava/lang/String;

.field private id:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 175
    new-instance v4, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    const-string v5, "CONNECTION_STATUS_OK"

    const-string v6, "CONNECTION_STATUS_OK"

    invoke-direct {v4, v5, v9, v10, v6}, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;->CONNECTION_STATUS_OK:Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    .line 176
    new-instance v4, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    const-string v5, "CONNECTION_STATUS_STALLED"

    const-string v6, "CONNECTION_STATUS_STALLED"

    invoke-direct {v4, v5, v10, v11, v6}, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;->CONNECTION_STATUS_STALLED:Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    .line 177
    new-instance v4, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    const-string v5, "CONNECTION_STATUS_DELAYED"

    const-string v6, "CONNECTION_STATUS_DELAYED"

    invoke-direct {v4, v5, v11, v12, v6}, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;->CONNECTION_STATUS_DELAYED:Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    .line 178
    new-instance v4, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    const-string v5, "CONNECTION_STATUS_STALLED_DOWNLOAD"

    const/16 v6, 0x8

    const-string v7, "CONNECTION_STATUS_STALLED_DOWNLOAD"

    invoke-direct {v4, v5, v12, v6, v7}, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;->CONNECTION_STATUS_STALLED_DOWNLOAD:Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    .line 179
    new-instance v4, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    const-string v5, "CONNECTION_STATUS_STALLED_HTTP_ERROR"

    const/4 v6, 0x7

    const-string v7, "CONNECTION_STATUS_STALLED_HTTP_ERROR"

    invoke-direct {v4, v5, v13, v6, v7}, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;->CONNECTION_STATUS_STALLED_HTTP_ERROR:Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    .line 180
    new-instance v4, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    const-string v5, "CONNECTION_STATUS_STALLED_JSON_PARSE"

    const/4 v6, 0x5

    const/4 v7, 0x5

    const-string v8, "CONNECTION_STATUS_STALLED_JSON_PARSE"

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;->CONNECTION_STATUS_STALLED_JSON_PARSE:Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    .line 181
    new-instance v4, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    const-string v5, "CONNECTION_STATUS_STALLED_PROTOCOL_EXCEPTION"

    const/4 v6, 0x6

    const/4 v7, 0x6

    const-string v8, "CONNECTION_STATUS_STALLED_PROTOCOL_EXCEPTION"

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;->CONNECTION_STATUS_STALLED_PROTOCOL_EXCEPTION:Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    .line 182
    new-instance v4, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    const-string v5, "CONNECTION_STATUS_STALLED_SSL"

    const/4 v6, 0x7

    const-string v7, "CONNECTION_STATUS_STALLED_SSL"

    invoke-direct {v4, v5, v6, v13, v7}, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;->CONNECTION_STATUS_STALLED_SSL:Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    .line 183
    new-instance v4, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    const-string v5, "CONNECTION_STATUS_STALLED_UNKNOWN_RESPONSE"

    const/16 v6, 0x8

    const/16 v7, 0x9

    const-string v8, "CONNECTION_STATUS_STALLED_UNKNOWN_RESPONSE"

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;->CONNECTION_STATUS_STALLED_UNKNOWN_RESPONSE:Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    .line 184
    new-instance v4, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    const-string v5, "CONNECTION_STATUS_REFRESH_COMPLETED"

    const/16 v6, 0x9

    const/16 v7, 0xa

    const-string v8, "CONNECTION_STATUS_REFRESH_COMPLETED"

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;->CONNECTION_STATUS_REFRESH_COMPLETED:Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    .line 185
    new-instance v4, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    const-string v5, "CONNECTION_STATUS_REFRESH_PENDING"

    const/16 v6, 0xa

    const/16 v7, 0xb

    const-string v8, "CONNECTION_STATUS_REFRESH_PENDING"

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;->CONNECTION_STATUS_REFRESH_PENDING:Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    .line 186
    new-instance v4, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    const-string v5, "CONNECTION_STATUS_REFRESH_DELAYED"

    const/16 v6, 0xb

    const/16 v7, 0xc

    const-string v8, "CONNECTION_STATUS_REFRESH_DELAYED"

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;->CONNECTION_STATUS_REFRESH_DELAYED:Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    .line 187
    new-instance v4, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    const-string v5, "CONNECTION_STATUS_INITIALIZATION_COMPLETE"

    const/16 v6, 0xc

    const/16 v7, 0xd

    const-string v8, "CONNECTION_STATUS_INITIALIZATION_COMPLETE"

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;->CONNECTION_STATUS_INITIALIZATION_COMPLETE:Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    .line 188
    new-instance v4, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    const-string v5, "BUILD_STATUS_UNLICENSED"

    const/16 v6, 0xd

    const/16 v7, 0xe

    const-string v8, "BUILD_STATUS_UNLICENSED"

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;->BUILD_STATUS_UNLICENSED:Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    .line 189
    new-instance v4, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    const-string v5, "BUILD_STATUS_LICENSED"

    const/16 v6, 0xe

    const/16 v7, 0xf

    const-string v8, "BUILD_STATUS_LICENSED"

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;->BUILD_STATUS_LICENSED:Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    .line 190
    new-instance v4, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    const-string v5, "CONNECTION_STATUS_UNKNOWN"

    const/16 v6, 0xf

    const-string v7, "CONNECTION_STATUS_UNKNOWN"

    invoke-direct {v4, v5, v6, v9, v7}, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;->CONNECTION_STATUS_UNKNOWN:Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    .line 174
    const/16 v4, 0x10

    new-array v4, v4, [Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    sget-object v5, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;->CONNECTION_STATUS_OK:Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    aput-object v5, v4, v9

    sget-object v5, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;->CONNECTION_STATUS_STALLED:Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    aput-object v5, v4, v10

    sget-object v5, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;->CONNECTION_STATUS_DELAYED:Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    aput-object v5, v4, v11

    sget-object v5, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;->CONNECTION_STATUS_STALLED_DOWNLOAD:Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    aput-object v5, v4, v12

    sget-object v5, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;->CONNECTION_STATUS_STALLED_HTTP_ERROR:Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    aput-object v5, v4, v13

    const/4 v5, 0x5

    sget-object v6, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;->CONNECTION_STATUS_STALLED_JSON_PARSE:Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    aput-object v6, v4, v5

    const/4 v5, 0x6

    sget-object v6, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;->CONNECTION_STATUS_STALLED_PROTOCOL_EXCEPTION:Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    aput-object v6, v4, v5

    const/4 v5, 0x7

    sget-object v6, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;->CONNECTION_STATUS_STALLED_SSL:Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    aput-object v6, v4, v5

    const/16 v5, 0x8

    sget-object v6, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;->CONNECTION_STATUS_STALLED_UNKNOWN_RESPONSE:Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    aput-object v6, v4, v5

    const/16 v5, 0x9

    sget-object v6, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;->CONNECTION_STATUS_REFRESH_COMPLETED:Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    aput-object v6, v4, v5

    const/16 v5, 0xa

    sget-object v6, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;->CONNECTION_STATUS_REFRESH_PENDING:Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    aput-object v6, v4, v5

    const/16 v5, 0xb

    sget-object v6, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;->CONNECTION_STATUS_REFRESH_DELAYED:Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    aput-object v6, v4, v5

    const/16 v5, 0xc

    sget-object v6, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;->CONNECTION_STATUS_INITIALIZATION_COMPLETE:Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    aput-object v6, v4, v5

    const/16 v5, 0xd

    sget-object v6, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;->BUILD_STATUS_UNLICENSED:Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    aput-object v6, v4, v5

    const/16 v5, 0xe

    sget-object v6, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;->BUILD_STATUS_LICENSED:Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    aput-object v6, v4, v5

    const/16 v5, 0xf

    sget-object v6, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;->CONNECTION_STATUS_UNKNOWN:Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    aput-object v6, v4, v5

    sput-object v4, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;->$VALUES:[Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    .line 194
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    sput-object v4, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;->map:Landroid/util/SparseArray;

    .line 212
    invoke-static {}, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;->values()[Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    move-result-object v0

    .local v0, "arr$":[Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 213
    .local v3, "status":Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;
    sget-object v4, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;->map:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;->getId()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 212
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 215
    .end local v3    # "status":Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "id"    # I
    .param p4, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 195
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 196
    iput p3, p0, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;->id:I

    .line 197
    iput-object p4, p0, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;->description:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public static forId(I)Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 208
    sget-object v0, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;->map:Landroid/util/SparseArray;

    sget-object v1, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;->CONNECTION_STATUS_UNKNOWN:Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 174
    const-class v0, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;
    .locals 1

    .prologue
    .line 174
    sget-object v0, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;->$VALUES:[Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    invoke-virtual {v0}, [Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;

    return-object v0
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/nuance/swype/connect/ConnectedStatus$StatusStates;->id:I

    return v0
.end method
