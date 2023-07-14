.class Lcom/nuance/swypeconnect/ac/ACScannerFacebook$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swypeconnect/ac/ACScannerFacebook;


# direct methods
.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACScannerFacebook;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$1;->this$0:Lcom/nuance/swypeconnect/ac/ACScannerFacebook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;)I
    .locals 4

    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;->edge:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;->field:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p2, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;->edge:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;->field:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

    check-cast p2, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

    invoke-virtual {p0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$1;->compare(Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;)I

    move-result v0

    return v0
.end method
