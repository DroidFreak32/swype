.class Lcom/nuance/swypeconnect/ac/ACScannerGmail2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field final synthetic this$0:Lcom/nuance/swypeconnect/ac/ACScannerGmail2;


# direct methods
.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACScannerGmail2;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$1;->this$0:Lcom/nuance/swypeconnect/ac/ACScannerGmail2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "body"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
