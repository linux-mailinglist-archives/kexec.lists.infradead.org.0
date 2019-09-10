Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36B73AF223
	for <lists+kexec@lfdr.de>; Tue, 10 Sep 2019 22:02:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E8D3xrzm+Rxl20Gcuqq6IfHueBQcykYHOvDxnTBfEkA=; b=BU1sM4ogt/gmVr
	odcErX6OhXH5b6rEQmVOe+AQcf1el1rIgc4M/w/oRW+TUtBBWlncKMZcAWrRnLT9cpLWkR9v/HJki
	UkI6BpvIZTTelW5sL6lkROeCdsc7FPcB/QlgYCEsD+PfZ7xKHGIzr8fbOk5lYxwM8Ga2JYOCTGkr1
	KVeHnpkEUhBU/fPdlTV2Sli9UDoqzEGa4lr1D9Uj0o/eEN2UwRXKJv9+6JXy7wUs4iKWN9cUvCyfU
	KbAQe1KGrcgH6CYRnkPaCaQ0p244WgI7cmoK4MCQLVZOCtHVgeUK9abifin0NfPq5EeXicr2duD0x
	iVv5IV0tCF2+KJotIjyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7mLe-0007sA-1a; Tue, 10 Sep 2019 20:02:46 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7mLb-0007rc-Bb
 for kexec@lists.infradead.org; Tue, 10 Sep 2019 20:02:44 +0000
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com
 [209.85.208.198])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C5035C007351
 for <kexec@lists.infradead.org>; Tue, 10 Sep 2019 20:02:39 +0000 (UTC)
Received: by mail-lj1-f198.google.com with SMTP id m8so3107593ljb.3
 for <kexec@lists.infradead.org>; Tue, 10 Sep 2019 13:02:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=i2cROcOKGe2mZgfszK2xPnAVFg0Z1NAHR3IoyOnOiRY=;
 b=iZlN4xBUMrTeWdEV07waKrwm/Rvj1K104nfEI3Ge9zaEpGoII9rpD4EObdBdzbZ9u2
 /3uqEXEfJ0VmsScZsWiJyGsME5ylKIWvDntHYQlHTDBfglWruqI9fLxahzpdc2srEZXq
 YqO8nKFw2KcM6F9b1Cm8rBJYMnRW4LFzxYjQSzdXntcSkTa0p+/QWZ2PAqdSXegxfjoh
 4fmec8WbUAzoIy630M4EXV6QYYRxIS7wiUDzaLUaG5F7M5cUXhoUGbYNu1hTolwGyx71
 In1tHg4p779AN/d/rXS5DJesj/bKZmgOiSSyfBEmmMRuOVzVneVHQfdotHNzJoGzZDMh
 Wm2Q==
X-Gm-Message-State: APjAAAV8XqTFJP8ElXxQ56UPfGST8isPQaeKwCAdjo+veURlMgsrSWPY
 t04XtUDn4wFYDAZeArZqYRpssb1JQXLJwlgyWld+y8owX0LgbyJ4JIs+AnWrg137NAHQhpJO6mC
 EXmBOh2wVmmD1bn5+2G6hXpDR5pFF4fFuR7au
X-Received: by 2002:a05:651c:1108:: with SMTP id
 d8mr13146845ljo.180.1568145758235; 
 Tue, 10 Sep 2019 13:02:38 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy7jhGzQYGowMOSRFDS0UD5k8gVnbr90So7hEh6dU83H3VHz3C2+CfgSOqcFf4URdtS4PwT+wKfVK9NcDYaFaI=
X-Received: by 2002:a05:651c:1108:: with SMTP id
 d8mr13146838ljo.180.1568145758063; 
 Tue, 10 Sep 2019 13:02:38 -0700 (PDT)
MIME-Version: 1.0
References: <20190910102150.7229-1-bhsharma@redhat.com>
 <20190910102150.7229-2-bhsharma@redhat.com>
 <50726111-29ef-6054-edd3-f9c9214442e8@redhat.com>
In-Reply-To: <50726111-29ef-6054-edd3-f9c9214442e8@redhat.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Wed, 11 Sep 2019 01:32:25 +0530
Message-ID: <CACi5LpOOdxr1c95k69QXp60RwE2CWGC97dqG0mUaVKgNenGgKg@mail.gmail.com>
Subject: Re: [PATCH 1/2] vmcore-dmesg/vmcore-dmesg.c: Fix shifting error
 reported by cppcheck
To: lijiang <lijiang@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_130243_421180_E1CC0490 
X-CRM114-Status: GOOD (  17.12  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Bhupesh SHARMA <bhupesh.linux@gmail.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 Simon Horman <horms@verge.net.au>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

T24gVHVlLCBTZXAgMTAsIDIwMTkgYXQgNzoyNSBQTSBsaWppYW5nIDxsaWppYW5nQHJlZGhhdC5j
b20+IHdyb3RlOgo+Cj4g5ZyoIDIwMTnlubQwOeaciDEw5pelIDE4OjIxLCBCaHVwZXNoIFNoYXJt
YSDlhpnpgZM6Cj4gPiBSdW5uaW5nICdjcHBjaGVjaycgc3RhdGljIGNvZGUgYW5hbHl6ZXIgKHNl
ZSBjcHBjaGVjaygxKSkKPiA+ICBvbiAndm1jb3JlLWRtZXNnL3ZtY29yZS1kbWVzZy5jJyBzaG93
cyB0aGUgZm9sbG93aW5nCj4gPiBzaGlmdGluZyBlcnJvcjoKPiA+Cj4gPiAkIGNwcGNoZWNrICAt
LWVuYWJsZT1hbGwgIHZtY29yZS1kbWVzZy92bWNvcmUtZG1lc2cuYwo+ID4gQ2hlY2tpbmcgdm1j
b3JlLWRtZXNnL3ZtY29yZS1kbWVzZy5jIC4uLgo+ID4gW3ZtY29yZS1kbWVzZy92bWNvcmUtZG1l
c2cuYzoxN106IChlcnJvcikgU2hpZnRpbmcgc2lnbmVkIDMyLWJpdCB2YWx1ZSBieSAzMSBiaXRz
IGlzIHVuZGVmaW5lZCBiZWhhdmlvdXIKPiA+Cj4gPiBGaXggdGhlIHNhbWUgdmlhIHRoaXMgcGF0
Y2guCj4gPgo+ID4gQ2M6IExpYW5ibyBKaWFuZyA8bGlqaWFuZ0ByZWRoYXQuY29tPgo+ID4gQ2M6
IFNpbW9uIEhvcm1hbiA8aG9ybXNAdmVyZ2UubmV0LmF1Pgo+ID4gU2lnbmVkLW9mZi1ieTogQmh1
cGVzaCBTaGFybWEgPGJoc2hhcm1hQHJlZGhhdC5jb20+Cj4gPiAtLS0KPiA+ICB2bWNvcmUtZG1l
c2cvdm1jb3JlLWRtZXNnLmMgfCAyICstCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9u
KCspLCAxIGRlbGV0aW9uKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL3ZtY29yZS1kbWVzZy92bWNv
cmUtZG1lc2cuYyBiL3ZtY29yZS1kbWVzZy92bWNvcmUtZG1lc2cuYwo+ID4gaW5kZXggODFjMmE1
OC4uMTIyZTUzNiAxMDA2NDQKPiA+IC0tLSBhL3ZtY29yZS1kbWVzZy92bWNvcmUtZG1lc2cuYwo+
ID4gKysrIGIvdm1jb3JlLWRtZXNnL3ZtY29yZS1kbWVzZy5jCj4gPiBAQCAtNiw3ICs2LDcgQEAg
dHlwZWRlZiBFbGYzMl9OaGRyIEVsZl9OaGRyOwo+ID4gIGV4dGVybiBjb25zdCBjaGFyICpmbmFt
ZTsKPiA+Cj4gPiAgLyogc3RvbGUgdGhpcyBtYWNybyBmcm9tIGtlcm5lbCBwcmludGsuYyAqLwo+
ID4gLSNkZWZpbmUgTE9HX0JVRl9MRU5fTUFYICh1aW50MzJfdCkoMSA8PCAzMSkKPiA+ICsjZGVm
aW5lIExPR19CVUZfTEVOX01BWCAodWludDMyX3QpKDFVIDw8IDMxKQo+ID4KPgo+IFRoaXMgbG9v
a3MgYmV0dGVyLiBUaGFuayB5b3UsIEJodXBlc2guCgpUaGFua3MgZm9yIHlvdXIgcmV2aWV3LCBM
aWFuYm8uCgpSZWdhcmRzLApCaHVwZXNoCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwprZXhlYyBtYWlsaW5nIGxpc3QKa2V4ZWNAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2tleGVjCg==
