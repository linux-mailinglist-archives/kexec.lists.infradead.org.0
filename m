Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF91671340
	for <lists+kexec@lfdr.de>; Tue, 23 Jul 2019 09:49:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=chJORRDks1ijdsLNtNRU8j+YWtMLkhEbnZ3UraKdpao=; b=F/RG1wbQWIzO/U
	I3W3zX3DnYxA2dERCWlX6ub/GyG9lScYH6ilf168C7w49z4/Wx2XwS9Fo4lCmZvqRP/4XLu7rK7M6
	JCr9TRljPQdd9TcMnE5eQb0AsQtcPlswWGhIYSordpX/HCSx9N53cmldlbc7CoIP+h9075tJ3243B
	qLJjOqiV+21CYbsFCDGUx1hktE0WZppHNYpv9OAsOSlJwx4BdDSNUKi4MpUJU0DZlM9ExPaf5vJy+
	QVnbh7R9h1BUCxPDah30gT42W+mQQpWEj4CMscqwTeSMdq/oeGyLRjA9lvoM+8Txoyv3rmgPBvmun
	e9CR5JrWtr0+M0KTgDDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hppY4-0004x3-IS; Tue, 23 Jul 2019 07:49:24 +0000
Received: from mail.lunchcard.eu ([176.107.133.213] helo=lunchcard.eu)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hppY0-0004wl-6x
 for kexec@lists.infradead.org; Tue, 23 Jul 2019 07:49:21 +0000
Received: by lunchcard.eu (Postfix, from userid 1001)
 id 537DA87CD6; Tue, 23 Jul 2019 09:32:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lunchcard.eu; s=mail;
 t=1563867553; bh=Px3inMCiDAVEjQlYwbfy6i6vMp+P5hI6lpZ4ctHC6M0=;
 h=Date:From:To:Subject:From;
 b=yY7VEiYr4PfFcK4ri62Ec45J3IrQoRbtUjndacOuDqEJb1W7yXtD9ypLwop9sHJmx
 RYIUPP4EbSXf5PmvQnz6XUZD1r0Ce3shqcdPFG41GupkFYqqITjNbi2LhQV87epTrw
 Qmja6UzuwA2gLei6BSaZ0l0pvT8fXRzJzkCsxhWs=
Received: by mail.lunchcard.eu for <kexec@lists.infradead.org>;
 Tue, 23 Jul 2019 07:32:35 GMT
Message-ID: <20190723084500-0.1.4e.u5j.0.neh5jiij51@lunchcard.eu>
Date: Tue, 23 Jul 2019 07:32:35 GMT
From: =?UTF-8?Q?"Kapolcs_M=C3=A1ty=C3=A1s"?= <kapolcs.matyas@lunchcard.eu>
To: <kexec@lists.infradead.org>
Subject: =?UTF-8?Q?Dolgoz=C3=B3i_juttat=C3=A1sok?=
X-Mailer: mail.lunchcard.eu
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_004920_415702_4AF4A6AD 
X-CRM114-Status: UNSURE (   1.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.1 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 2.3 MIXED_ES               Too many es are not es
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.29
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
qWdlaXQgYSBjw6lnw7xrbsOpbD8KClN6w6lwIG5hcG90ISAgCgpLYXBvbGNzIE3DoXR5w6FzCkh1
bmdhcnkgVGVhbSBMZWFkZXIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmtleGVjIG1haWxpbmcgbGlzdAprZXhlY0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8va2V4ZWMK
