Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF7B518655
	for <lists+kexec@lfdr.de>; Thu,  9 May 2019 09:46:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jBoGo4D9E6H9qaNfXooVRmCqPU6YCiSeXPeRr25Igqk=; b=lnAB/0d7V0Lgjk
	Ix2MvI/04lJq+GYn5ZB6uzi8CvoxyIg3snyHoUFNHHvgQ3UfN11/YKNBpB5a/0+9v9884onZIiKIb
	jJ8CQy9pxj/i2Od5SQARyJJMS4CzTXzfPgPjyA7Iyp5/SU5fiX31y/J+JeiOSTT/pwa337gbyWicF
	6QDcsBLhWDedsGxDCCUQuY2qtHzX4nIZ7Nl2JcvhxH9lFwHrpE/jVA70/M2oss651s4lTaWUrzIJn
	eprvRW23NRrW3eor5rbHfMQJ62ZeFRorGjWha9klZNsJFHZInBkoAfCdwXx7cwzhF68mp44CgLiQs
	tCa/fIIAXjfezXamTX1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOdkX-0007Fi-RA; Thu, 09 May 2019 07:45:53 +0000
Received: from mail.eat-dinner.eu ([80.211.38.224] helo=eat-dinner.eu)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOdkO-0007F7-0c
 for kexec@lists.infradead.org; Thu, 09 May 2019 07:45:45 +0000
Received: by eat-dinner.eu (Postfix, from userid 1001)
 id 818A5A323B; Thu,  9 May 2019 09:33:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=eat-dinner.eu;
 s=mail; t=1557387795;
 bh=1wXsRnVQKyR5953v1mK5+VSjATpkqCFjMxx9a9NW6X4=;
 h=Date:From:To:Subject:From;
 b=rAbhjQB+fcx1o/nFCYAJXaYAhtGqDt03msQkDIdQdd9Hnzdn7IWm/G8FDFJ+NsZgv
 XB4jNuBDfOFFY9+imkBagpKuLg0ccjepwkGSzWK8oLRwGPbK1PUBthJpEJFsoNamHy
 rMnG1x68ORSvkt3A9Hd7VYJsS0H47SmidvkC4qgA=
Received: by mail.eat-dinner.eu for <kexec@lists.infradead.org>;
 Thu,  9 May 2019 07:33:05 GMT
Message-ID: <20190509084500-0.1.1f.j15.0.bkepci9k7e@eat-dinner.eu>
Date: Thu,  9 May 2019 07:33:05 GMT
From: =?UTF-8?Q?"Kapolcs_M=C3=A1ty=C3=A1s"?= <kapolcs.matyas@eat-dinner.eu>
To: <kexec@lists.infradead.org>
Subject: =?UTF-8?Q?Dolgoz=C3=B3i_juttat=C3=A1sok?=
X-Mailer: mail.eat-dinner.eu
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_004544_224678_62FD3F75 
X-CRM114-Status: UNSURE (   1.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

w5xkdsO2emzDtm0hCiAKMjAxOSBqYW51w6FydMOzbCB2w6FsdG96aWsgYSBuZW0gYsOpciBqZWxs
ZWfFsSBqdXR0YXTDoXNvayByZW5kamUuCiAKRWd5IGtpdsOhbMOzIGxlaGV0xZFzw6lnZ2VsIMOp
bGVoZXQsIGFtZW5ueWliZW4gYSBtaSBrw6FydHnDoW5rYXQgdsOhbGFzenRqYSEKIApFeiBhIGvD
oXJ0eWE6CiAKS29ybMOhdGxhbnVsIGZlbGhhc3puw6FsaGF0w7M6CiAKa8Opc3pww6luemZlbHbD
qXRlbArDqWxlbG1pc3plciB2w6Fzw6FybMOhcwplZ8Opc3pzw6lnw7xneWkgZWxsw6F0w6FzCmVs
ZWt0cm9uaWthaSB0ZXJtw6lrZWsgdsOhc8OhcmzDoXNhCm9rdGF0w6FzCnN6w6FsbMOhcwogCkvD
oXJ0ecOhbmsgYXogZWd5ZXRsZW4gb2x5YW4gdmFsw7NiYW4gc3phYmFkZmVsaGFzem7DoWzDoXPD
uiBrw6FydHlhLCBtZWx5ZXQgbWluZGVuIFBPUyB0ZXJtaW7DoWwgZWxmb2dhZCEKIApBbWVubnlp
YmVuIGvDoXJ0ecOhbmsgZmVsa2VsdGV0dGUgw6lyZGVrbMWRZMOpc8OpdCwgbWludCBkb2xnb3rD
s2kganV0dGF0w6FzLCBrw6lyZW0ga2VyZXNzZW4gZmVsIGEgdG92w6FiYmkgdMOhasOpa296dGF0
w6FzIMOpcmRla8OpYmVuIQogCsOWcsO2bW1lbCDDoWxsdW5rIHJlbmRlbGtlesOpc8OpcmUgbWlu
ZGVuYmVuIQoKCkthcG9sY3MgTcOhdHnDoXMKSHVuZ2FyeSBUZWFtIExlYWRlcgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Ka2V4ZWMgbWFpbGluZyBsaXN0
CmtleGVjQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9rZXhlYwo=
