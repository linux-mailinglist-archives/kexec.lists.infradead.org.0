Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26FDE1C9F28
	for <lists+kexec@lfdr.de>; Fri,  8 May 2020 01:37:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vIt8+umqyn6yUiYSpTW6RxzGGe+DvYBZgCLv3GtZ3KE=; b=RmQc1VSqL4L+4K
	rZ4t3tVjCbUMpAv0TixeD9R7mUNvR1Bhit+R8VUeuqqt1tWrtmyIqj4f+QdwP8DPZ4Mm9lebAvZGx
	GIRhAx6C8HLjARF1ozrbi/gu0LRoR8QtJ1gcYTmmWq+5RP+2MmjRQpeJFUA0SLCB9pUQ31NA/MsZ5
	lm3V9q543MhRlxGwFHqJmE06mrPgy/qgGDv9C94y5P7YfOY+dZzo0dRGeGn3D7zxzm0WtnpM8i+PT
	x0/Qylksj4o9r5FAfOQCj9CXSe6XHVFlUdasbb6cuvk5qVbFLkKxj2ieSxV7mL6d86UW9N7BBbDMy
	RgetzH3ePwLkLIBCAuOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWq4U-0002I0-9Z; Thu, 07 May 2020 23:36:54 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWq4Q-0002HD-J4
 for kexec@lists.infradead.org; Thu, 07 May 2020 23:36:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588894608;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=IF1gr0Ej8dhAMBdv+LPk159EvF5Y2nzU/01Tj5qgwcY=;
 b=UXF3Xdkps3VlLgGiPy0EaDpr5225trAVWP24qdg9Krh/IAU2J/3+MDDDiDpL8D5ccdL0Uq
 2MjpQFUZ/SzNfvP1Q+9eHtvF/vSDfB0GMDLZEKgWau2yob7U+WrKjRLl7zeXQTvDo+1jHb
 WuQB5ZEPzImpCXL0nlIIW+ju+qVnulE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-110-wTxwCdqhMDe1rHI9QmCmlw-1; Thu, 07 May 2020 19:36:46 -0400
X-MC-Unique: wTxwCdqhMDe1rHI9QmCmlw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 196B21899520;
 Thu,  7 May 2020 23:36:45 +0000 (UTC)
Received: from optiplex-lnx (unknown [10.3.128.26])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id E6101707B0;
 Thu,  7 May 2020 23:36:37 +0000 (UTC)
Date: Thu, 7 May 2020 19:36:34 -0400
From: Rafael Aquini <aquini@redhat.com>
To: Qian Cai <cai@lca.pw>
Subject: Re: [PATCH] kernel: add panic_on_taint
Message-ID: <20200507233634.GA367616@optiplex-lnx>
References: <20200507221503.GL205881@optiplex-lnx>
 <6B423101-ACF4-49A3-AD53-ACBF87F1ABE0@lca.pw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6B423101-ACF4-49A3-AD53-ACBF87F1ABE0@lca.pw>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_163650_703838_E83E25A1 
X-CRM114-Status: GOOD (  13.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.120 listed in wl.mailspike.net]
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
Cc: Kees Cook <keescook@chromium.org>, Baoquan He <bhe@redhat.com>,
 linux-doc@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 kexec@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, dyoung@redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

T24gVGh1LCBNYXkgMDcsIDIwMjAgYXQgMDc6MDc6MjBQTSAtMDQwMCwgUWlhbiBDYWkgd3JvdGU6
Cj4gCj4gCj4gPiBPbiBNYXkgNywgMjAyMCwgYXQgNjoxNSBQTSwgUmFmYWVsIEFxdWluaSA8YXF1
aW5pQHJlZGhhdC5jb20+IHdyb3RlOgo+ID4gCj4gPiBJdCdzIGEgcmVhc29uYWJsZSBhbmQgc2Vs
Zi1jb250YWluZWQgZmVhdHVyZSB0aGF0IHdlIGhhdmUgYSB2YWxpZCB1c2UgZm9yLiAKPiA+IEkg
aG9uZXN0bHkgZmFpbCB0byBzZWUgaXQgY2F1c2luZyB0aGF0IGFtb3VudCBvZiBhbm5veWFuY2Ug
YXMgeW91IGFyZSAKPiA+IHN1Z2dlc3RpbmcgaGVyZS4KPiAKPiBJdCBpcyBub3QgYSBiaWcgdHJv
dWJsZSB5ZXQsIGJ1dCBrZWVwaW5nIGFuIG9ic29sZXRlIHBhdGNoIHRoYXQgbm90IHZlcnkgc3Ry
YWlnaHRmb3J3YXJkIHRvIGZpZ3VyZSBvdXQgdGhhdCBpdCB3aWxsIGJlIHN1cGVyc2VkZWQgYnkg
dGhlIHBhbmljX29uX3RhaW50IHBhdGNoIHdpbGwgb25seSBjYXVzZSBtb3JlIGNvbmZ1c2lvbiB0
aGUgbG9uZ2VyIGl0IGhhcyBzdGF5ZWQgaW4gbGludXgtbmV4dC4KPiAKPiBUaGUgdGhpbmcgaXMg
dGhhdCBldmVuIGlmIHlvdSBjYW7igJl0IGdldCB0aGlzIHBhbmljX29uX3RhaW50ICh0aGUgc3Vw
ZXJpb3Igc29sdXRpb24pIHBhdGNoIGFjY2VwdGVkIGZvciBzb21lIHJlYXNvbnMsIHNvbWVvbmUg
ZWxzZSBjb3VsZCBzdGlsbCB3b3JrIG9uIGl0IHVudGlsIGl0IGdldCBtZXJnZWQuCj4gCj4gVGh1
cywgSSBmYWlsZWQgdG8gc2VlIGFueSBwb3NzaWJpbGl0eSB3ZSB3aWxsIGdvIGJhY2sgdG8gdGhl
IGluZmVyaW9yIHNvbHV0aW9uIChtbS1zbHViLWFkZC1wYW5pY19vbl9lcnJvci10by10aGUtZGVi
dWctZmFjaWxpdGllcy5wYXRjaCkgYnkgYWxsIG1lYW5zLgo+CgpUaGVyZSBhcmUgcGxlbnR5IG9m
IGV4YW1wbGVzIG9mIHRoaW5ncyBiZWluZyBhZGRlZCwgY2hhbmdlZCwgYW5kCnJlbW92ZWQgaW4g
LW5leHQuIElPVywgbGl2aW5nIGluIGEgdHJhbnNpZW50IHN0YXRlLiBJIHRoaW5rIGl0J3MgCmEg
cmVhc29uYWJsZSBjb21wcm9taXNlIHRvIGtlZXAgaXQgd2hpbGUgdGhlIG90aGVyIG9uZSBpcyBi
ZWluZCAKaXJvbmVkIG91dC4KClRoZSBmYWN0IHRoYXQgeW91IHByZWZlciBvbmUgc29sdXRpb24g
dG8gYW5vdGhlciBkb2Vzbid0CmludmFsaWRhdGUgdGhlIG9uZSB5b3UgZGlzbGlrZS4gCgpDaGVl
cnMsCi0tIFJhZmFlbAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmtleGVjIG1haWxpbmcgbGlzdAprZXhlY0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8va2V4ZWMK
