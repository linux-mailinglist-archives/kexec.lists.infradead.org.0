Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 778D636FFC
	for <lists+kexec@lfdr.de>; Thu,  6 Jun 2019 11:34:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Yf8cWStYjpYeQfO1+HOujTptqTtxStZxi+x02U1Jblk=; b=EpTxrdF0m0LsZU
	nDFU4vZ5tDcY/4bgcrpgx4brDwXl/cB8dF+0en6Rty9+ackD+9/w2uZ5S0cHFKQXMSJy3Vvn1Ubpd
	tn5fVV1IjQaREezyZiWnx5FEUm8MVyze8bVaaGMYdKDckFKEUIBLgqvYk9kAU/+9NuA+A65odxE/7
	WFXSnGCXeNoSBfTKcuJswamoVAx9eTjpfzvwRoFcC1E8S9AG0KXMAYIhjSPMARmvAfZhT21azsavV
	UpA6buIDWFohEchsejluuIi0cVe3y7/DeeK7BoXVW8Q0toE38HUmS2WOOyuiYZO7qCG2eAY0xH8nO
	FwYJ0gK0X8ON6PgIpceA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYonO-0000ew-Lc; Thu, 06 Jun 2019 09:34:54 +0000
Received: from mail.omniworkers.eu ([80.211.60.52])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYonJ-0000dJ-UR
 for kexec@lists.infradead.org; Thu, 06 Jun 2019 09:34:52 +0000
Received: by mail.omniworkers.eu (Postfix, from userid 1001)
 id 86B0F875A4; Thu,  6 Jun 2019 11:28:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=omniworkers.eu;
 s=mail; t=1559813320;
 bh=D58Ekd58Iez5bmGTlkmSFAkQc44ZhiyfQ8pUxOQf3pc=;
 h=Date:From:To:Subject:From;
 b=W3deHmPra873qZoWq68keVKVkQcy2Bc9XRMA5NlDdkbANj3makjRqw18cxsoSnYpg
 GqMCab3jcNXtC66Wf+7a918yqcSYlxmvNMuHgFcxEwW6al3xGS2bTYJr0cbhss/NZn
 +PbMvAW8glXcARcTnOQfqH7VeKeXniQQrWdzRWo0=
Received: by mail.omniworkers.eu for <kexec@lists.infradead.org>;
 Thu,  6 Jun 2019 09:28:32 GMT
Message-ID: <20190606094820-0.1.h.1d4y.0.8l4zsnvdp0@omniworkers.eu>
Date: Thu,  6 Jun 2019 09:28:32 GMT
From: =?UTF-8?Q?"Kapolcs_M=C3=A1ty=C3=A1s"?= <kapolcs.matyas@omniworkers.eu>
To: <kexec@lists.infradead.org>
Subject: =?UTF-8?Q?Dolgoz=C3=B3i_juttat=C3=A1sok?=
X-Mailer: mail.omniworkers.eu
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_023450_142201_E4D63772 
X-CRM114-Status: UNSURE (   1.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.1 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 2.3 MIXED_ES               Too many es are not es
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

w5xkdsO2emzDtm0hCgoyMDE5LXTFkWwgbWFqZG5lbSBheiDDtnNzemVzIGtpZWfDqXN6w610xZEg
anV0dGF0w6FzIGrDtnZlZGVsZW1rw6ludCBmb2cgYWTDs3puaSAoa2l2w6l2ZSBhIFNaw4lQIGvD
oXJ0ecOhdCkuCgpTemVyZXRuw6ltIGF6IMOWbsO2ayBmaWd5ZWxtw6liZSBhasOhbmxhbmkganV0
dGF0w6FzIGvDoXJ0ecOhaW5rYXQsIG1lbHllayBheiDDumogdGVoZXRzw6lnZWsgbWVnbnllcsOp
c8OpbmVrIMOpcyBhIGRvbGdvesOzayBtZWd0YXJ0w6Fzw6FuYWsgw6lzIG1vdGl2w6Fsw6Fzw6Fu
YWsgdmVyc2VueWvDqXBlcyBlc3prw7Z6ZWkuCgpBIFNaw4lQIGvDoXJ0eWEgbWVnb2xkw6FzYWl0
w7NsIGVsdMOpcsWRZW4gYSBtaSBrw6FydHnDoWlua2F0IGEgbXVua2F2w6FsbGFsw7MgdGV0c3rF
kWxlZ2VzIGPDqWxva3JhIGhhc3puw6FsaGF0amEgZmVsOiDDqWxlbG1pc3plciB2w6Fzw6FybMOh
c3JhLCBlZ8Opc3pzw6lnw7xneWkgZWxsw6F0w6FzcmEsIGVsZWt0cm9uaWvDoXJhLCBzesOhbGzD
oXNyYSwgb2t0YXTDoXNyYSDDqXMgZWd5w6liIGPDqWxva3JhLCB2YWd5IGFrw6FyIGvDqXN6cMOp
bnpmZWx2w6l0ZWxpIGxlaGV0xZFzw6lnZXQgaXMgdsOhbGFzenRoYXQuIAoKU3plcmV0bsOpayBt
ZWdpc21lcm5pIGp1dHRhdMOhcyBrw6FydHnDoWluayBmZWxoYXN6bsOhbMOhc2kgbGVoZXTFkXPD
qWdlaXQgYSBjw6lnw7xrbsOpbD8KCgpLYXBvbGNzIE3DoXR5w6FzCkh1bmdhcnkgVGVhbSBMZWFk
ZXIgCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Ka2V4
ZWMgbWFpbGluZyBsaXN0CmtleGVjQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9rZXhlYwo=
