Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A04E424901
	for <lists+kexec@lfdr.de>; Tue, 21 May 2019 09:33:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RYIyeQ9w0Mcw6GN1HFTv2nlSttPm/h2+sCtxihWMlbs=; b=qkdPI1q74uRm6f
	IDxnHg7UmmPMIQCy5CVOs9BCggLvvmuS5vJk2dsbICZ3g9BR6gb8mW/tvS3y4D+pJ42KbdUsPTQjE
	PRN41mrtUoMxVFC0GGkqsHbc2+kl0uwm5/twyg5zPZ+fixKa1djxxGWgAJFkTsawwczQAYhdVPzZo
	spL1WR++7fMwH7ugPo8lRn2Nn/reNxEGD2LhD9SzrYHxn1uR8ie7RUe3hwQRPu7mjctbCjl9Zmngk
	m0CtKDgaa/OaGmy0mR0rMZuzr3DV/QnEDQvWxzXw+WC/pxHf3OVWMB2MMO7O2bMcTnlxrRBfjb2lz
	V/U7I3mkb6VXQkNw8+7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSzGh-0007BF-5u; Tue, 21 May 2019 07:33:03 +0000
Received: from smtp-fw-33001.amazon.com ([207.171.190.10])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSzGa-0007AV-A1
 for kexec@lists.infradead.org; Tue, 21 May 2019 07:32:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.de; i=@amazon.de; q=dns/txt; s=amazon201209;
 t=1558423976; x=1589959976;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=oay3RHWpcD7F+EsEsQwW3EURX6DC1ViPJLa9rfFLS1o=;
 b=v67NLI5vWTKLAuew7x/BS+vmlm3lBZU+ZEDq58T2oyT48hqV0Bs2v2Mj
 flTWx0mMvTxDJe5Rb/PeRWFGTw/ee0iSrXOzH6aq1295xRD2GnRbrZA/M
 X0TaMhpEQLlaIkDY2+ofNXKQSVnyxE9SrXLrYhoFgEGYXpAvAapO+FUss o=;
X-IronPort-AV: E=Sophos;i="5.60,494,1549929600"; d="scan'208";a="800839751"
Received: from sea3-co-svc-lb6-vlan2.sea.amazon.com (HELO
 email-inbound-relay-1e-57e1d233.us-east-1.amazon.com) ([10.47.22.34])
 by smtp-border-fw-out-33001.sea14.amazon.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 21 May 2019 07:32:53 +0000
Received: from EX13MTAUEA001.ant.amazon.com
 (iad55-ws-svc-p15-lb9-vlan3.iad.amazon.com [10.40.159.166])
 by email-inbound-relay-1e-57e1d233.us-east-1.amazon.com (8.14.7/8.14.7) with
 ESMTP id x4L7Wmjf082565
 (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL)
 for <kexec@lists.infradead.org>; Tue, 21 May 2019 07:32:52 GMT
Received: from EX13D08UEE001.ant.amazon.com (10.43.62.126) by
 EX13MTAUEA001.ant.amazon.com (10.43.61.243) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Tue, 21 May 2019 07:32:48 +0000
Received: from EX13MTAUWC001.ant.amazon.com (10.43.162.135) by
 EX13D08UEE001.ant.amazon.com (10.43.62.126) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Tue, 21 May 2019 07:32:48 +0000
Received: from u908889d5e8f057.ant.amazon.com (10.28.86.17) by
 mail-relay.amazon.com (10.43.162.232) with Microsoft SMTP Server id
 15.0.1367.3 via Frontend Transport; Tue, 21 May 2019 07:32:45 +0000
From: Varad Gautam <vrd@amazon.de>
To: <kexec@lists.infradead.org>
Subject: [PATCH 1/3] xen: Avoid overlapping segments in low memory
Date: Tue, 21 May 2019 09:32:26 +0200
Message-ID: <1558423948-24583-1-git-send-email-vrd@amazon.de>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_003256_438867_8AC6CEE6 
X-CRM114-Status: GOOD (  15.60  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.171.190.10 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Cc: David Woodhouse <dwmw@amazon.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

RnJvbTogRGF2aWQgV29vZGhvdXNlIDxkd213QGFtYXpvbi5jby51az4KClVubGlrZSBMaW51eCB3
aGljaCBjcmVhdGVzIGEgZnVsbCBpZGVudGl0eSBtYXBwaW5nLCBYZW4gb25seSBtYXBzIHRob3Nl
CnNlZ21lbnRzIHdoaWNoIGFyZSBleHBsaWNpdGx5IHJlcXVlc3RlZC4gVGhlcmVmb3JlLCB4ZW5f
a2V4ZWNfbG9hZCgpCnNpbGVudGx5IGFkZHMgaW4gYSBzZWdtZW50IGZyb20gemVybyB0byAxTWlC
IHRvIGVuc3VyZSB0aGF0IFZHQSBtZW1vcnkKYW5kIG90aGVyIHRoaW5ncyBhcmUgYWNjZXNzaWJs
ZS4KCkhvd2V2ZXIsIHRoaXMgZG9lc24ndCB3b3JrIHdoZW4gdGhlcmUgYXJlIGFscmVhZHkgc2Vn
bWVudHMgdG8gYmUgbG9hZGVkCnVuZGVyIDFNaUIsIGJlY2F1c2UgdGhlIG92ZXJsYXAgY2F1c2Vz
IFhlbiB0byByZWplY3QgdGhlIGtleGVjX2xvYWQuCgpCZSBtb3JlIGNhcmVmdWwgYW5kIGp1c3Qg
aW5maWxsIHRoZSByYW5nZXMgd2hpY2ggYXJlIHJlcXVpcmVkIGluc3RlYWQKb2YgbmHDr3ZlbHkg
YWRkaW5nIGEgZnVsbCAwLTFNaUIgc2VnbWVudCBhdCB0aGUgZW5kLgoKU2lnbmVkLW9mZi1ieTog
RGF2aWQgV29vZGhvdXNlIDxkd213QGFtYXpvbi5jby51az4KLS0tCiBrZXhlYy9rZXhlYy14ZW4u
YyB8IDczICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0t
LS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA1NCBpbnNlcnRpb25zKCspLCAxOSBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9rZXhlYy9rZXhlYy14ZW4uYyBiL2tleGVjL2tleGVjLXhlbi5jCmluZGV4
IDE4ODczOTAuLmMzMjY5NTUgMTAwNjQ0Ci0tLSBhL2tleGVjL2tleGVjLXhlbi5jCisrKyBiL2tl
eGVjL2tleGVjLXhlbi5jCkBAIC02NCwxNSArNjQsMTggQEAgaW50IF9feGNfaW50ZXJmYWNlX2Ns
b3NlKHhjX2ludGVyZmFjZSAqeGNoKQogfQogI2VuZGlmIC8qIENPTkZJR19MSUJYRU5DVFJMX0RM
ICovCiAKKyNkZWZpbmUgSURFTlRNQVBfMU1pQiAoMTAyNCAqIDEwMjQpCisKIGludCB4ZW5fa2V4
ZWNfbG9hZChzdHJ1Y3Qga2V4ZWNfaW5mbyAqaW5mbykKIHsKLQl1aW50MzJfdCBucl9zZWdtZW50
cyA9IGluZm8tPm5yX3NlZ21lbnRzOworCXVpbnQzMl90IG5yX3NlZ21lbnRzID0gaW5mby0+bnJf
c2VnbWVudHMsIG5yX2xvd19zZWdtZW50cyA9IDA7CiAJc3RydWN0IGtleGVjX3NlZ21lbnQgKnNl
Z21lbnRzID0gaW5mby0+c2VnbWVudDsKKwl1aW50NjRfdCBsb3dfd2F0ZXJtYXJrID0gMDsKIAl4
Y19pbnRlcmZhY2UgKnhjaDsKIAl4Y19oeXBlcmNhbGxfYnVmZmVyX2FycmF5X3QgKmFycmF5ID0g
TlVMTDsKIAl1aW50OF90IHR5cGU7CiAJdWludDhfdCBhcmNoOwotCXhlbl9rZXhlY19zZWdtZW50
X3QgKnhlbl9zZWdzOworCXhlbl9rZXhlY19zZWdtZW50X3QgKnhlbl9zZWdzLCAqc2VnOwogCWlu
dCBzOwogCWludCByZXQgPSAtMTsKIApAQCAtODAsNyArODMsMjggQEAgaW50IHhlbl9rZXhlY19s
b2FkKHN0cnVjdCBrZXhlY19pbmZvICppbmZvKQogCWlmICgheGNoKQogCQlyZXR1cm4gLTE7CiAK
LQl4ZW5fc2VncyA9IGNhbGxvYyhucl9zZWdtZW50cyArIDEsIHNpemVvZigqeGVuX3NlZ3MpKTsK
KwkvKgorCSAqIEVuc3VyZSAwIC0gMSBNaUIgaXMgbWFwcGVkIGFuZCBhY2Nlc3NpYmxlIGJ5IHRo
ZSBpbWFnZS4KKwkgKiBUaGlzIGFsbG93cyBhY2Nlc3MgdG8gdGhlIFZHQSBtZW1vcnkgYW5kIHRo
ZSByZWdpb24KKwkgKiBwdXJnYXRvcnkgY29waWVzIGluIHRoZSBjcmFzaCBjYXNlLgorCSAqCisJ
ICogRmlyc3QsIGNvdW50IHRoZSBudW1iZXIgb2YgYWRkaXRpb25hbCBzZWdtZW50cyB3aGljaCB3
aWxsCisJICogbmVlZCB0byBiZSBhZGRlZCBpbiBiZXR3ZWVuIHRoZSBvbmVzIGluIHNlZ21lbnRz
W10uCisJICoKKwkgKiBUaGUgc2VnbWVudHMgYXJlIGFscmVhZHkgc29ydGVkLgorCSAqLworCWZv
ciAocyA9IDA7IHMgPCBucl9zZWdtZW50cyAmJiAodWludDY0X3Qpc2VnbWVudHNbc10ubWVtIDw9
IElERU5UTUFQXzFNaUI7IHMrKykgeworCQlpZiAoKHVpbnQ2NF90KXNlZ21lbnRzW3NdLm1lbSA+
IGxvd193YXRlcm1hcmspCisJCQlucl9sb3dfc2VnbWVudHMrKzsKKworCQlsb3dfd2F0ZXJtYXJr
ID0gKHVpbnQ2NF90KXNlZ21lbnRzW3NdLm1lbSArIHNlZ21lbnRzW3NdLm1lbXN6OworCX0KKwlp
ZiAobG93X3dhdGVybWFyayA8IElERU5UTUFQXzFNaUIpCisJCW5yX2xvd19zZWdtZW50cysrOwor
CisJbG93X3dhdGVybWFyayA9IDA7CisKKwl4ZW5fc2VncyA9IGNhbGxvYyhucl9zZWdtZW50cyAr
IG5yX2xvd19zZWdtZW50cywgc2l6ZW9mKCp4ZW5fc2VncykpOwogCWlmICgheGVuX3NlZ3MpCiAJ
CWdvdG8gb3V0OwogCkBAIC04OCwzMiArMTEyLDQzIEBAIGludCB4ZW5fa2V4ZWNfbG9hZChzdHJ1
Y3Qga2V4ZWNfaW5mbyAqaW5mbykKIAlpZiAoYXJyYXkgPT0gTlVMTCkKIAkJZ290byBvdXQ7CiAK
KwlzZWcgPSB4ZW5fc2VnczsKIAlmb3IgKHMgPSAwOyBzIDwgbnJfc2VnbWVudHM7IHMrKykgewog
CQlERUNMQVJFX0hZUEVSQ0FMTF9CVUZGRVIodm9pZCwgc2VnX2J1Zik7CiAKKwkJaWYgKGxvd193
YXRlcm1hcmsgPCBJREVOVE1BUF8xTWlCICYmICh1aW50NjRfdClzZWdtZW50c1tzXS5tZW0gPiBs
b3dfd2F0ZXJtYXJrKSB7CisJCQlzZXRfeGVuX2d1ZXN0X2hhbmRsZShzZWctPmJ1Zi5oLCBIWVBF
UkNBTExfQlVGRkVSX05VTEwpOworCQkJc2VnLT5idWZfc2l6ZSA9IDA7CisJCQlzZWctPmRlc3Rf
bWFkZHIgPSBsb3dfd2F0ZXJtYXJrOworCQkJbG93X3dhdGVybWFyayA9ICh1aW50NjRfdClzZWdt
ZW50c1tzXS5tZW07CisJCQlpZiAobG93X3dhdGVybWFyayA+IElERU5UTUFQXzFNaUIpCisJCQkJ
bG93X3dhdGVybWFyayA9IElERU5UTUFQXzFNaUI7CisJCQlzZWctPmRlc3Rfc2l6ZSA9IGxvd193
YXRlcm1hcmsgLSBzZWctPmRlc3RfbWFkZHI7CisJCQlzZWcrKzsKKwkJfQorCiAJCXNlZ19idWYg
PSB4Y19oeXBlcmNhbGxfYnVmZmVyX2FycmF5X2FsbG9jKHhjaCwgYXJyYXksIHMsCiAJCQkJCQkJ
ICBzZWdfYnVmLCBzZWdtZW50c1tzXS5idWZzeik7CiAJCWlmIChzZWdfYnVmID09IE5VTEwpCiAJ
CQlnb3RvIG91dDsKIAkJbWVtY3B5KHNlZ19idWYsIHNlZ21lbnRzW3NdLmJ1Ziwgc2VnbWVudHNb
c10uYnVmc3opOwogCi0JCXNldF94ZW5fZ3Vlc3RfaGFuZGxlKHhlbl9zZWdzW3NdLmJ1Zi5oLCBz
ZWdfYnVmKTsKLQkJeGVuX3NlZ3Nbc10uYnVmX3NpemUgPSBzZWdtZW50c1tzXS5idWZzejsKLQkJ
eGVuX3NlZ3Nbc10uZGVzdF9tYWRkciA9ICh1aW50NjRfdClzZWdtZW50c1tzXS5tZW07Ci0JCXhl
bl9zZWdzW3NdLmRlc3Rfc2l6ZSA9IHNlZ21lbnRzW3NdLm1lbXN6OworCQlzZXRfeGVuX2d1ZXN0
X2hhbmRsZShzZWctPmJ1Zi5oLCBzZWdfYnVmKTsKKwkJc2VnLT5idWZfc2l6ZSA9IHNlZ21lbnRz
W3NdLmJ1ZnN6OworCQlzZWctPmRlc3RfbWFkZHIgPSAodWludDY0X3Qpc2VnbWVudHNbc10ubWVt
OworCQlzZWctPmRlc3Rfc2l6ZSA9IHNlZ21lbnRzW3NdLm1lbXN6OworCQlzZWcrKzsKKworCQls
b3dfd2F0ZXJtYXJrID0gKHVpbnQ2NF90KXNlZ21lbnRzW3NdLm1lbSArIHNlZ21lbnRzW3NdLm1l
bXN6OwogCX0KIAotCS8qCi0JICogRW5zdXJlIDAgLSAxIE1pQiBpcyBtYXBwZWQgYW5kIGFjY2Vz
c2libGUgYnkgdGhlIGltYWdlLgotCSAqCi0JICogVGhpcyBhbGxvd3MgYWNjZXNzIHRvIHRoZSBW
R0EgbWVtb3J5IGFuZCB0aGUgcmVnaW9uCi0JICogcHVyZ2F0b3J5IGNvcGllcyBpbiB0aGUgY3Jh
c2ggY2FzZS4KLQkgKi8KLQlzZXRfeGVuX2d1ZXN0X2hhbmRsZSh4ZW5fc2Vnc1tzXS5idWYuaCwg
SFlQRVJDQUxMX0JVRkZFUl9OVUxMKTsKLQl4ZW5fc2Vnc1tzXS5idWZfc2l6ZSA9IDA7Ci0JeGVu
X3NlZ3Nbc10uZGVzdF9tYWRkciA9IDA7Ci0JeGVuX3NlZ3Nbc10uZGVzdF9zaXplID0gMSAqIDEw
MjQgKiAxMDI0OwotCW5yX3NlZ21lbnRzKys7CisJaWYgKCh1aW50NjRfdClsb3dfd2F0ZXJtYXJr
IDwgSURFTlRNQVBfMU1pQikgeworCQlzZXRfeGVuX2d1ZXN0X2hhbmRsZShzZWctPmJ1Zi5oLCBI
WVBFUkNBTExfQlVGRkVSX05VTEwpOworCQlzZWctPmJ1Zl9zaXplID0gMDsKKwkJc2VnLT5kZXN0
X21hZGRyID0gbG93X3dhdGVybWFyazsKKwkJc2VnLT5kZXN0X3NpemUgPSBJREVOVE1BUF8xTWlC
IC0gbG93X3dhdGVybWFyazsKKwkJc2VnKys7CisJfQogCiAJdHlwZSA9IChpbmZvLT5rZXhlY19m
bGFncyAmIEtFWEVDX09OX0NSQVNIKSA/IEtFWEVDX1RZUEVfQ1JBU0gKIAkJOiBLRVhFQ19UWVBF
X0RFRkFVTFQ7CkBAIC0xMjUsNyArMTYwLDcgQEAgaW50IHhlbl9rZXhlY19sb2FkKHN0cnVjdCBr
ZXhlY19pbmZvICppbmZvKQogI2VuZGlmCiAKIAlyZXQgPSB4Y19rZXhlY19sb2FkKHhjaCwgdHlw
ZSwgYXJjaCwgKHVpbnQ2NF90KWluZm8tPmVudHJ5LAotCQkJICAgIG5yX3NlZ21lbnRzLCB4ZW5f
c2Vncyk7CisJCQkgICAgbnJfc2VnbWVudHMgKyBucl9sb3dfc2VnbWVudHMsIHhlbl9zZWdzKTsK
IAogb3V0OgogCXhjX2h5cGVyY2FsbF9idWZmZXJfYXJyYXlfZGVzdHJveSh4Y2gsIGFycmF5KTsK
LS0gCjIuNy40CgoKCgpBbWF6b24gRGV2ZWxvcG1lbnQgQ2VudGVyIEdlcm1hbnkgR21iSApLcmF1
c2Vuc3RyLiAzOAoxMDExNyBCZXJsaW4KR2VzY2hhZWZ0c2Z1ZWhyZXI6IENocmlzdGlhbiBTY2hs
YWVnZXIsIFJhbGYgSGVyYnJpY2gKVXN0LUlEOiBERSAyODkgMjM3IDg3OQpFaW5nZXRyYWdlbiBh
bSBBbXRzZ2VyaWNodCBDaGFybG90dGVuYnVyZyBIUkIgMTQ5MTczIEIKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmtleGVjIG1haWxpbmcgbGlzdAprZXhl
Y0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8va2V4ZWMK
