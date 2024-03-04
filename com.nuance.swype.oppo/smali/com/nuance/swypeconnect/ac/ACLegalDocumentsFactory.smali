.class final Lcom/nuance/swypeconnect/ac/ACLegalDocumentsFactory;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getACLegalDocuments(Ljava/lang/String;Lcom/nuance/connect/api/ConnectServiceManager;)Lcom/nuance/swypeconnect/ac/ACLegalDocuments;
    .locals 2

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;

    invoke-direct {v1}, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;-><init>()V

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    invoke-virtual {v0, p1}, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->init(Lcom/nuance/connect/api/ConnectServiceManager;)V

    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method
