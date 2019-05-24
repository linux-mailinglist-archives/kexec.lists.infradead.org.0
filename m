Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E7A929406
	for <lists+kexec@lfdr.de>; Fri, 24 May 2019 10:59:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QuOh5v75ibb45EGVb8Ms03F4x0LpAWzfAPjJZTwNgPY=; b=uHm/ja1OWHK3h/
	q6HyA/TOHuqhcFbnJOdqcJO6Pkkj3Dw17X5XmwN+BROblpR8sQXV90qZVKXbiCKWupBRhj11wTn8x
	6YiP1M7AB/NSKo488TBE2avw4mPNOI246BZXzXv9YIFoMaHwAofHZM2smX6EgPSM1bBma6bStIvII
	f603Dp1BADkDXkz4wJbKeTLaB1ECfjuuPCWZ8xYkLIw10/h8xRTBCX7lXfdWAKgUYLNTPSFoJGqC7
	tiLj22rhO4DuZh7rKeHKvqTKOW7VfDHF8+S1/gq5I1oIamJcRo+ZaC7DZL/XlhUqlhISJKjtiIc35
	dQ9uZl9g1Ryn4dbHXxTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU63B-0004MC-Lq; Fri, 24 May 2019 08:59:41 +0000
Received: from mail.tastiess.eu ([194.182.86.235])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU638-0004Ln-1r
 for kexec@lists.infradead.org; Fri, 24 May 2019 08:59:39 +0000
Received: by mail.tastiess.eu (Postfix, from userid 1001)
 id E580A88F36; Fri, 24 May 2019 10:51:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=tastiess.eu; s=mail;
 t=1558688022; bh=I9Ue03WK1DGltuFRFxeBc6SZHKWkq/f13b7q3CFLQVk=;
 h=Date:From:To:Subject:From;
 b=LvN1wnPbvXhkNoYBSEbBujaaI5BLS1YCNNIcQ3cZ5kv6go5XoBNT7509B2zN4rnH4
 uVS6zYmCYYHfszo6EHQpFWqrEkL1oNoL+dVilZMnu35DeuXcXWOa5vh98EHKXar7y/
 awyo9E/avVg943q4orgPjbGCeBM4GPp781MMtAU0=
Received: by mail.tastiess.eu for <kexec@lists.infradead.org>;
 Fri, 24 May 2019 08:51:18 GMT
Message-ID: <20190524104213-0.1.t.7p7.0.dko5r3po4e@tastiess.eu>
Date: Fri, 24 May 2019 08:51:18 GMT
From: =?UTF-8?Q?"Kapolcs_M=C3=A1ty=C3=A1s"?= <kapolcs.matyas@tastiess.eu>
To: <kexec@lists.infradead.org>
Subject: =?UTF-8?Q?Dolgoz=C3=B3i_juttat=C3=A1sok?=
X-Mailer: mail.tastiess.eu
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_015938_266160_68611E55 
X-CRM114-Status: UNSURE (   0.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

w5xkdsO2emzDtm0hCgoyMDE5IGphbnXDoXJqw6F0w7NsIG1lZ3N6xbFudCBheiBFcnpzw6liZXQg
dXRhbHbDoW55b2sgw6lzIGvDoXJ0ecOhayBmb3JnYWxtYXrDoXNhLgoKSXNtZXJqZSBtZWcganV0
dGF0w6FzaSBrw6FydHnDoWlua2F0IMOpcyB1dGFsdsOhbnlhaW5rYXQsIG1lbHlla2tlbCBlZ3lz
emVyxbFlbiBoZWx5ZXR0ZXPDrXRoZXRpIGEga29yw6FiYmkgRXJ6c8OpYmV0ZXMganV0dGF0w6Fz
b2thdC4KCkFtZW5ueWliZW4gw5ZuIGlzIGEgbGVnZWd5c3plcsWxYmIgw6F0w6FsbMOhc3Qgc3pl
cmV0bsOpLCBzesOtdmVzZW4gYmVtdXRhdG9tIMOWbm5layBtZWdvbGTDoXNhaW5rYXQhCgoKS2Fw
b2xjcyBNw6F0ecOhcwpIdW5nYXJ5IFRlYW0gTGVhZGVyICAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmtleGVjIG1haWxpbmcgbGlzdAprZXhlY0BsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8va2V4ZWMK
