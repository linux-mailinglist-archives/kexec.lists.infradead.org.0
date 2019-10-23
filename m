Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C916E11B8
	for <lists+kexec@lfdr.de>; Wed, 23 Oct 2019 07:35:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VE+PNumJlpNd1RQRqqbp57+GzkakC6r7Blql9xeTt3E=; b=ds22ihs9a4EgWS
	HETOwg1DdOdRIDlJGMUvye8frBRCBc13kGstoFgSMwnbPrDXpnmekCo7mREUul8DVZVEQ3dcQ/lWx
	MQa7WC+swyI+wJ3Q4aPjoC+bcj1DNIvUT4XQGJ3FnBK0B5NWKz6urOfFjddOwM4Q7NZVgBgr2Kz5r
	WZrQOAz2YAsnFd3WaJNqf/ufQCq7xcvQJbvrkjVp2fGKL8ydBAGeJ3mol27+r4y3PIKjNrkwdBE0I
	oiX+xfa4mNxpMi/iVvaisVdYMO2dvNSCGspwoWJo4KGFgaC8IvOQ+TLiyee1vuy2jO9b9YusfE2Z6
	lpPVbpq6PCh3MhIqWLzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN9J7-0005XY-JO; Wed, 23 Oct 2019 05:35:41 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN9J3-0005Wp-KX
 for kexec@lists.infradead.org; Wed, 23 Oct 2019 05:35:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571808935;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=PPe1IRBOsH2BR4FF+8mJN3mzcvJtrOdn5If1ErhhvOc=;
 b=R0dWjVDVUL6B2/tV17ZeZ2VIaX/tolwRacf2D8PF2afyU1QUkpPPG3GWy5xtLjK2trjCsz
 aZrLHrVVxCkjcObyAx3UOj/BONI9MQKRKbNMEBtqaO9s08SERpisVnBZ6ByRWX3ldjeTKs
 oz8bopp85lLm9a57eA8kipwzrUAVR9A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-354-LK_5z2xoMhi396xlherLOg-1; Wed, 23 Oct 2019 01:35:31 -0400
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 388B91005500;
 Wed, 23 Oct 2019 05:35:30 +0000 (UTC)
Received: from localhost.localdomain (ovpn-12-33.pek2.redhat.com [10.72.12.33])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 47780100164D;
 Wed, 23 Oct 2019 05:35:14 +0000 (UTC)
Subject: Re: [PATCH 1/3 v4] x86/kdump: always reserve the low 1MiB when the
 crashkernel option is specified
To: Borislav Petkov <bp@alien8.de>
References: <20191017094347.20327-1-lijiang@redhat.com>
 <20191017094347.20327-2-lijiang@redhat.com> <20191022083015.GB31700@zn.tnic>
From: lijiang <lijiang@redhat.com>
Message-ID: <75648e8d-4ef7-0537-618e-e4a57f0d3b9b@redhat.com>
Date: Wed, 23 Oct 2019 13:35:09 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20191022083015.GB31700@zn.tnic>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-MC-Unique: LK_5z2xoMhi396xlherLOg-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_223537_748796_92090681 
X-CRM114-Status: GOOD (  22.44  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: jgross@suse.com, Thomas.Lendacky@amd.com, bhe@redhat.com, x86@kernel.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org, dhowells@redhat.com,
 mingo@redhat.com, ebiederm@xmission.com, hpa@zytor.com, tglx@linutronix.de,
 dyoung@redhat.com, vgoyal@redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

5ZyoIDIwMTnlubQxMOaciDIy5pelIDE2OjMwLCBCb3Jpc2xhdiBQZXRrb3Yg5YaZ6YGTOgo+IFRo
aXMgaWZkZWZmZXJ5IG5lZWRzIHRvIGJlIGEgZnVuY3Rpb24gaW4ga2VybmVsL2tleGVjX2NvcmUu
YyB3aGljaCBpcwo+IGNhbGxlZCBieSByZXNlcnZlX3JlYWxfbW9kZSgpLCBpbnN0ZWFkLgoKV291
bGQgeW91IG1pbmQgaWYgaSBpbXByb3ZlIHRoaXMgcGF0Y2ggYXMgZm9sbG93PyBUaGFua3MuCgpG
cm9tIDU4MDRhYmVjNjIyNzk1ODVmMzc0ZDc4YWNlMTI1MDUwNWM0NGM2YjcgTW9uIFNlcCAxNyAw
MDowMDowMCAyMDAxCkZyb206IExpYW5ibyBKaWFuZyA8bGlqaWFuZ0ByZWRoYXQuY29tPgpEYXRl
OiBXZWQsIDIzIE9jdCAyMDE5IDExOjI3OjA0ICswODAwClN1YmplY3Q6IFtQQVRDSF0geDg2L2tk
dW1wOiBhbHdheXMgcmVzZXJ2ZSB0aGUgbG93IDFNaUIgd2hlbiB0aGUgY3Jhc2hrZXJuZWwKIG9w
dGlvbiBpcyBzcGVjaWZpZWQKCktkdW1wIGtlcm5lbCB3aWxsIHJldXNlIHRoZSBmaXJzdCA2NDBr
IHJlZ2lvbiBiZWNhdXNlIHRoZSByZWFsIG1vZGUKdHJhbXBvbGluZSBoYXMgdG8gd29yayBpbiB0
aGlzIGFyZWEuIFdoZW4gdGhlIHZtY29yZSBpcyBkdW1wZWQsIHRoZQpvbGQgbWVtb3J5IGluIHRo
aXMgYXJlYSBtYXkgYmUgYWNjZXNzZWQsIHRoZXJlZm9yZSwga2VybmVsIGhhcyB0bwpjb3B5IHRo
ZSBjb250ZW50cyBvZiB0aGUgZmlyc3QgNjQwayBhcmVhIHRvIGEgYmFja3VwIHJlZ2lvbiBzbyB0
aGF0CmtkdW1wIGtlcm5lbCBjYW4gcmVhZCB0aGUgb2xkIG1lbW9yeSBmcm9tIHRoZSBiYWNrdXAg
YXJlYSBvZiB0aGUKZmlyc3QgNjQwayBhcmVhLCB3aGljaCBpcyBkb25lIGluIHRoZSBwdXJnYXRv
cnkoKS4KCkJ1dCwgdGhlIGN1cnJlbnQgaGFuZGxpbmcgb2YgY29weWluZyB0aGUgZmlyc3QgNjQw
ayBhcmVhIHJ1bnMgaW50bwpwcm9ibGVtcyB3aGVuIFNNRSBpcyBlbmFibGVkLCBrZXJuZWwgZG9l
cyBub3QgcHJvcGVybHkgY29weSB0aGVzZQpvbGQgbWVtb3J5IHRvIHRoZSBiYWNrdXAgYXJlYSBp
biB0aGUgcHVyZ2F0b3J5KCksIHRoZXJlYnksIGtkdW1wCmtlcm5lbCByZWFkcyBvdXQgdGhlIGVu
Y3J5cHRlZCBjb250ZW50cywgYmVjYXVzZSB0aGUga2R1bXAga2VybmVsCm11c3QgYWNjZXNzIHRo
ZSBmaXJzdCBrZXJuZWwncyBtZW1vcnkgd2l0aCB0aGUgZW5jcnlwdGlvbiBiaXQgc2V0CndoZW4g
U01FIGlzIGVuYWJsZWQgaW4gdGhlIGZpcnN0IGtlcm5lbC4gUGxlYXNlIHJlZmVyIHRvIHRoaXMg
bGluazoKCkJ1Z3ppbGxhOiBodHRwczovL2J1Z3ppbGxhLmtlcm5lbC5vcmcvc2hvd19idWcuY2dp
P2lkPTIwNDc5MwoKRmluYWxseSwgaXQgY2F1c2VzIHRoZSBmb2xsb3dpbmcgZXJyb3JzLCBhbmQg
dGhlIGNyYXNoIHRvb2wgZ2V0cwppbnZhbGlkIHBvaW50ZXJzIHdoZW4gcGFyc2luZyB0aGUgdm1j
b3JlLgoKY3Jhc2g+IGttZW0gLXN8Z3JlcCAtaSBpbnZhbGlkCmttZW06IGRtYS1rbWFsbG9jLTUx
Mjogc2xhYjpmZmZmZDc3NjgwMDAxYzAwIGludmFsaWQgZnJlZXBvaW50ZXI6YTYwODZhYzA5OWYw
YzVhNAprbWVtOiBkbWEta21hbGxvYy01MTI6IHNsYWI6ZmZmZmQ3NzY4MDAwMWMwMCBpbnZhbGlk
IGZyZWVwb2ludGVyOmE2MDg2YWMwOTlmMGM1YTQKY3Jhc2g+CgpUbyBhdm9pZCB0aGUgYWJvdmUg
ZXJyb3JzLCB3aGVuIHRoZSBjcmFzaGtlcm5lbCBvcHRpb24gaXMgc3BlY2lmaWVkLApsZXRzIHJl
c2VydmUgdGhlIHJlbWFpbmluZyBsb3cgMU1pQiBtZW1vcnkoYWZ0ZXIgcmVzZXJ2aW5nIHJlYWwg
bW9kZQptZW1vcnkpIHNvIHRoYXQgdGhlIGFsbG9jYXRlZCBtZW1vcnkgZG9lcyBub3QgZmFsbCBp
bnRvIHRoZSBsb3cgMU1pQgphcmVhLCB3aGljaCBtYWtlcyB1cyBub3QgdG8gY29weSB0aGUgZmly
c3QgNjQwayBjb250ZW50IHRvIGEgYmFja3VwCnJlZ2lvbiBpbiBwdXJnYXRvcnkoKS4gVGhpcyBp
bmRpY2F0ZXMgdGhhdCBpdCBkb2VzIG5vdCBuZWVkIHRvIGJlCmluY2x1ZGVkIGluIGNyYXNoIGR1
bXBzIG9yIHVzZWQgZm9yIGFueXRoaW5nIGV4Y2VwdCB0aGUgcHJvY2Vzc29yCnRyYW1wb2xpbmVz
IHRoYXQgbXVzdCBsaXZlIGluIHRoZSBsb3cgMU1pQi4KClNpZ25lZC1vZmYtYnk6IExpYW5ibyBK
aWFuZyA8bGlqaWFuZ0ByZWRoYXQuY29tPgotLS0KQlRXOkkgYWxzbyB0cmllZCB0byBmaXggdGhl
IGFib3ZlIHByb2JsZW0gaW4gcHVyZ2F0b3J5KCksIGJ1dCB0aGVyZQphcmUgdG9vIG1hbnkgcmVz
dHJpY3RzIGluIHB1cmdhdG9yeSgpIGNvbnRleHQsIGZvciBleGFtcGxlOiBpIGNhbid0CmFsbG9j
YXRlIG5ldyBtZW1vcnkgdG8gY3JlYXRlIHRoZSBpZGVudGl0eSBtYXBwaW5nIHBhZ2UgdGFibGUg
Zm9yClNNRSBzaXR1YXRpb24uCgpDdXJyZW50bHksIHRoZXJlIGFyZSB0d28gcGxhY2VzIHdoZXJl
IHRoZSBmaXJzdCA2NDBrIGFyZWEgaXMgbmVlZGVkLAp0aGUgZmlyc3Qgb25lIGlzIGluIHRoZSBm
aW5kX3RyYW1wb2xpbmVfcGxhY2VtZW50KCksIGFub3RoZXIgb25lIGlzCmluIHRoZSByZXNlcnZl
X3JlYWxfbW9kZSgpLCBhbmQgdGhlaXIgY29udGVudCBkb2Vzbid0IG1hdHRlci4KCkluIGFkZGl0
aW9uLCBhbHNvIG5lZWQgdG8gY2xlYW4gYWxsIHRoZSBjb2RlIHJlbGF0ZWQgdG8gdGhlIGJhY2t1
cApyZWdpb24gbGF0ZXIuCgogYXJjaC94ODYvcmVhbG1vZGUvaW5pdC5jIHwgIDIgKysKIGluY2x1
ZGUvbGludXgva2V4ZWMuaCAgICB8ICAyICsrCiBrZXJuZWwva2V4ZWNfY29yZS5jICAgICAgfCAx
MyArKysrKysrKysrKysrCiAzIGZpbGVzIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKykKCmRpZmYg
LS1naXQgYS9hcmNoL3g4Ni9yZWFsbW9kZS9pbml0LmMgYi9hcmNoL3g4Ni9yZWFsbW9kZS9pbml0
LmMKaW5kZXggN2RjZTM5YzhjMDM0Li4wNjRjYzc5YTAxNWQgMTAwNjQ0Ci0tLSBhL2FyY2gveDg2
L3JlYWxtb2RlL2luaXQuYworKysgYi9hcmNoL3g4Ni9yZWFsbW9kZS9pbml0LmMKQEAgLTMsNiAr
Myw3IEBACiAjaW5jbHVkZSA8bGludXgvc2xhYi5oPgogI2luY2x1ZGUgPGxpbnV4L21lbWJsb2Nr
Lmg+CiAjaW5jbHVkZSA8bGludXgvbWVtX2VuY3J5cHQuaD4KKyNpbmNsdWRlIDxsaW51eC9rZXhl
Yy5oPgogCiAjaW5jbHVkZSA8YXNtL3NldF9tZW1vcnkuaD4KICNpbmNsdWRlIDxhc20vcGd0YWJs
ZS5oPgpAQCAtMzQsNiArMzUsNyBAQCB2b2lkIF9faW5pdCByZXNlcnZlX3JlYWxfbW9kZSh2b2lk
KQogCiAJbWVtYmxvY2tfcmVzZXJ2ZShtZW0sIHNpemUpOwogCXNldF9yZWFsX21vZGVfbWVtKG1l
bSk7CisJa2V4ZWNfcmVzZXJ2ZV9sb3dfMU1pQigpOwogfQogCiBzdGF0aWMgdm9pZCBfX2luaXQg
c2V0dXBfcmVhbF9tb2RlKHZvaWQpCmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2tleGVjLmgg
Yi9pbmNsdWRlL2xpbnV4L2tleGVjLmgKaW5kZXggMTc3NmViMmU0M2E0Li4zMGFjZjFkNzM4YmMg
MTAwNjQ0Ci0tLSBhL2luY2x1ZGUvbGludXgva2V4ZWMuaAorKysgYi9pbmNsdWRlL2xpbnV4L2tl
eGVjLmgKQEAgLTMwNiw2ICszMDYsNyBAQCBleHRlcm4gdm9pZCBfX2NyYXNoX2tleGVjKHN0cnVj
dCBwdF9yZWdzICopOwogZXh0ZXJuIHZvaWQgY3Jhc2hfa2V4ZWMoc3RydWN0IHB0X3JlZ3MgKik7
CiBpbnQga2V4ZWNfc2hvdWxkX2NyYXNoKHN0cnVjdCB0YXNrX3N0cnVjdCAqKTsKIGludCBrZXhl
Y19jcmFzaF9sb2FkZWQodm9pZCk7Cit2b2lkIGtleGVjX3Jlc2VydmVfbG93XzFNaUIodm9pZCk7
CiB2b2lkIGNyYXNoX3NhdmVfY3B1KHN0cnVjdCBwdF9yZWdzICpyZWdzLCBpbnQgY3B1KTsKIGV4
dGVybiBpbnQga2ltYWdlX2NyYXNoX2NvcHlfdm1jb3JlaW5mbyhzdHJ1Y3Qga2ltYWdlICppbWFn
ZSk7CiAKQEAgLTM5Nyw2ICszOTgsNyBAQCBzdGF0aWMgaW5saW5lIHZvaWQgX19jcmFzaF9rZXhl
YyhzdHJ1Y3QgcHRfcmVncyAqcmVncykgeyB9CiBzdGF0aWMgaW5saW5lIHZvaWQgY3Jhc2hfa2V4
ZWMoc3RydWN0IHB0X3JlZ3MgKnJlZ3MpIHsgfQogc3RhdGljIGlubGluZSBpbnQga2V4ZWNfc2hv
dWxkX2NyYXNoKHN0cnVjdCB0YXNrX3N0cnVjdCAqcCkgeyByZXR1cm4gMDsgfQogc3RhdGljIGlu
bGluZSBpbnQga2V4ZWNfY3Jhc2hfbG9hZGVkKHZvaWQpIHsgcmV0dXJuIDA7IH0KK3N0YXRpYyBp
bmxpbmUgdm9pZCBrZXhlY19yZXNlcnZlX2xvd18xTWlCKHZvaWQpIHsgfQogI2RlZmluZSBrZXhl
Y19pbl9wcm9ncmVzcyBmYWxzZQogI2VuZGlmIC8qIENPTkZJR19LRVhFQ19DT1JFICovCiAKZGlm
ZiAtLWdpdCBhL2tlcm5lbC9rZXhlY19jb3JlLmMgYi9rZXJuZWwva2V4ZWNfY29yZS5jCmluZGV4
IDE1ZDcwYTkwYjUwZC4uNWJkODlmMWZlZTQyIDEwMDY0NAotLS0gYS9rZXJuZWwva2V4ZWNfY29y
ZS5jCisrKyBiL2tlcm5lbC9rZXhlY19jb3JlLmMKQEAgLTM3LDYgKzM3LDcgQEAKICNpbmNsdWRl
IDxsaW51eC9jb21waWxlci5oPgogI2luY2x1ZGUgPGxpbnV4L2h1Z2V0bGIuaD4KICNpbmNsdWRl
IDxsaW51eC9mcmFtZS5oPgorI2luY2x1ZGUgPGxpbnV4L21lbWJsb2NrLmg+CiAKICNpbmNsdWRl
IDxhc20vcGFnZS5oPgogI2luY2x1ZGUgPGFzbS9zZWN0aW9ucy5oPgpAQCAtNzAsNiArNzEsMTgg
QEAgc3RydWN0IHJlc291cmNlIGNyYXNoa19sb3dfcmVzID0gewogCS5kZXNjICA9IElPUkVTX0RF
U0NfQ1JBU0hfS0VSTkVMCiB9OwogCisvKgorICogV2hlbiB0aGUgY3Jhc2hrZXJuZWwgb3B0aW9u
IGlzIHNwZWNpZmllZCwgb25seSB1c2UgdGhlIGxvdworICogMU1pQiBmb3IgdGhlIHJlYWwgbW9k
ZSB0cmFtcG9saW5lLgorICovCit2b2lkIGtleGVjX3Jlc2VydmVfbG93XzFNaUIodm9pZCkKK3sK
KwlpZiAoc3Ryc3RyKGJvb3RfY29tbWFuZF9saW5lLCAiY3Jhc2hrZXJuZWw9IikpIHsKKwkJbWVt
YmxvY2tfcmVzZXJ2ZSgwLCAxPDwyMCk7CisJCXByX2luZm8oIlJlc2VydmluZyB0aGUgbG93IDFN
aUIgb2YgbWVtb3J5IGZvciBjcmFzaGtlcm5lbFxuIik7CisJfQorfQorCiBpbnQga2V4ZWNfc2hv
dWxkX2NyYXNoKHN0cnVjdCB0YXNrX3N0cnVjdCAqcCkKIHsKIAkvKgotLSAKMi4xNy4xCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Ka2V4ZWMgbWFpbGlu
ZyBsaXN0CmtleGVjQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9rZXhlYwo=
