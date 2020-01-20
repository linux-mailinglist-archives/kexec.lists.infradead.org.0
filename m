Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96CD8142596
	for <lists+kexec@lfdr.de>; Mon, 20 Jan 2020 09:33:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	Date:Subject:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ajk1Fbb0iq54iH9aJAT2cw3zSTZpoMz9x+btlYlPe74=; b=bVpe3ujHXAjeMr
	+gufYFqdz1AhxTqxNBA1vmZTWavyKFtWrMtcoATxBfJC5oEJQTWC+VmsdLWX/gvs31TpBa8SAahyY
	xGIVZPsGguxXpPeeK7x2UOuXZ/RGkg2w+tMkRw/tIzlYtW2bidB1GWXBBcQmg6//OpYyeIO83VOyZ
	wFi3ClJ4AHM875uQD/iQ9y6aSCKUwf2DVb9ffcV0aERQatpr4P1gWU374o8e8c8DxAlPV35iAr1Y2
	i70m6kmgcU2RPCEOEIkM1hbB3foSN6+nHPzqkjK4UEUSXoPSd7M+ptBzPcx7B0lXhzWXuFRLSw7vq
	gPaCYxrZRwXnnax6SK9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itSUo-0004FF-BL; Mon, 20 Jan 2020 08:33:18 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itSUg-0004EU-Im
 for kexec@lists.infradead.org; Mon, 20 Jan 2020 08:33:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579509187;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=bvWGCWXQCwIfrz9DKetpRNi4ZHptn9BXNWly0W4TUko=;
 b=Gx1Ox1lRJGBBvBVF/5lMPzj+uHY4gBQWatezW5xZ5eh+rHYMKfYTHQ85f+Qwd5MMF3C61M
 cRsybhSy+n3CUS62/vBx9jQ0xxRAw2ejzQo7AJTGheX9d1Hq3XbA8Vj1gWnSETATEpzakB
 3oKA5oINHNX/2eausLbjeaO4KHDtRag=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-438-PjYazEcfMMSOM5AyeEknyw-1; Mon, 20 Jan 2020 03:33:06 -0500
Received: by mail-wr1-f69.google.com with SMTP id c17so13755159wrp.10
 for <kexec@lists.infradead.org>; Mon, 20 Jan 2020 00:33:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=unZIc68IrXnEk9TF47avrISDGn3vtwyZboFdMrB6Aus=;
 b=Qmnm6jr+1lG1l57oXmtYS3VQCe+k0bDwYwdT39/DEqpGlKqwtPiUo3MCyxbn/fqAum
 fiYJF/YlAmPBlUczauf671VY+nmDnBd6C3F48ADPt1t+/FctwmcHH6NagCj349r7qh+w
 v3fzeYxnE19tOuAAFfhLsF1lBuLkbXmDj1l3eFuCfh8EG6tMjIsf4tCFexbLNYEO9N+1
 EKtxL/sLazKSybDcrlCXVZERU67pZI15ONel3BfA0X+6D29Ua6/HlAa1jSl4XP4F3/Sh
 o6LtjhrqQ03ut8v4wADkm3Sq/4mzu2wK7yuVAGRnIsXxnbhSrScv89ZmDYADS+8xlbVI
 x5Iw==
X-Gm-Message-State: APjAAAVjj0r7rsE9CxuqekULyuUqL9P3pj2B/T38yqp5kTT/HTniIwja
 tuKIAmgYkzgODWt+hM4HPLC/yYKLmjudDv5vESPGlGhJ08ZAixI1QuymBVrF5vg0L4pIUBOvV3L
 zBPj2MWA92nC0ySd09vq+
X-Received: by 2002:adf:f3cd:: with SMTP id g13mr17399312wrp.54.1579509185184; 
 Mon, 20 Jan 2020 00:33:05 -0800 (PST)
X-Google-Smtp-Source: APXvYqwFPNgbXIQznYD/RWpIC2adRlUSPIcnkRQLU+MlMYtojA5AfMBfOBhuR2IFjWvxlNDyZodL0g==
X-Received: by 2002:adf:f3cd:: with SMTP id g13mr17399293wrp.54.1579509184994; 
 Mon, 20 Jan 2020 00:33:04 -0800 (PST)
Received: from [192.168.3.122] (p5B0C6A98.dip0.t-ipconnect.de. [91.12.106.152])
 by smtp.gmail.com with ESMTPSA id 5sm47102508wrh.5.2020.01.20.00.33.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 20 Jan 2020 00:33:04 -0800 (PST)
From: David Hildenbrand <david@redhat.com>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH] makedumpfile: cope with not-present mem section
Date: Mon, 20 Jan 2020 09:33:02 +0100
Message-Id: <2AA47CAB-ED13-4A0A-9288-063832158203@redhat.com>
References: <1579487124-28426-1-git-send-email-piliu@redhat.com>
In-Reply-To: <1579487124-28426-1-git-send-email-piliu@redhat.com>
To: Pingfan Liu <piliu@redhat.com>
X-Mailer: iPhone Mail (17C54)
X-MC-Unique: PjYazEcfMMSOM5AyeEknyw-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_003310_690723_0484D7A0 
X-CRM114-Status: GOOD (  14.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>, Baoquan He <bhe@redhat.com>,
 David Hildenbrand <david@redhat.com>, kexec@lists.infradead.org,
 Michal Hocko <mhocko@kernel.org>, Qian Cai <cai@lca.pw>,
 Andrew Morton <akpm@linux-foundation.org>,
 Dan Williams <dan.j.williams@intel.com>, Oscar Salvador <osalvador@suse.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Cgo+IEFtIDIwLjAxLjIwMjAgdW0gMDM6MjUgc2NocmllYiBQaW5nZmFuIExpdSA8cGlsaXVAcmVk
aGF0LmNvbT46Cj4gCj4g77u/QWZ0ZXIga2VybmVsIGNvbW1pdCBiYTcyYjRjOGNmNjAgKCJtbS9z
cGFyc2VtZW06IHN1cHBvcnQgc3ViLXNlY3Rpb24KPiBob3RwbHVnIiksIHdoZW4gaG90LXJlbW92
ZWQsIHNlY3Rpb25fbWVtX21hcCBpcyBzdGlsbCBlbmNvZGVkIHdpdGggc2VjdGlvbgo+IHN0YXJ0
IHBmbiwgbm90IE5VTEwuIFRoaXMgYnJlYWsgdGhlIGN1cnJlbnQgbWFrZWR1bXBmaWxlLgo+IAo+
IFdoYXRldmVyIHNlY3Rpb25fbWVtX21hcCBjb2RpbmcgaW5mbyBhZnRlciBob3QtcmVtb3ZlZCwg
aXQgaXMgcmVsaWFibGUKPiBqdXN0IHRvIHdvcmsgb24gU0VDVElPTl9NQVJLRURfUFJFU0VOVCBi
aXQuIEZpeGluZyBtYWtlZHVtcGZpbGUgYnkgdGhpcwo+IHdheS4KPiAKPiBTaWduZWQtb2ZmLWJ5
OiBQaW5nZmFuIExpdSA8cGlsaXVAcmVkaGF0LmNvbT4KPiBUbzoga2V4ZWNAbGlzdHMuaW5mcmFk
ZWFkLm9yZwo+IENjOiBLYXp1aGl0byBIYWdpbyA8ay1oYWdpb0BhYi5qcC5uZWMuY29tPgo+IENj
OiBCYW9xdWFuIEhlIDxiaGVAcmVkaGF0LmNvbT4KPiBDYzogRGF2aWQgSGlsZGVuYnJhbmQgPGRh
dmlkQHJlZGhhdC5jb20+Cj4gQ2M6IEFuZHJldyBNb3J0b24gPGFrcG1AbGludXgtZm91bmRhdGlv
bi5vcmc+Cj4gQ2M6IERhbiBXaWxsaWFtcyA8ZGFuLmoud2lsbGlhbXNAaW50ZWwuY29tPgo+IENj
OiBPc2NhciBTYWx2YWRvciA8b3NhbHZhZG9yQHN1c2UuZGU+Cj4gQ2M6IE1pY2hhbCBIb2NrbyA8
bWhvY2tvQGtlcm5lbC5vcmc+Cj4gQ2M6IFFpYW4gQ2FpIDxjYWlAbGNhLnB3Pgo+IC0tLQo+IG1h
a2VkdW1wZmlsZS5jIHwgNiArLS0tLS0KPiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyks
IDUgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL21ha2VkdW1wZmlsZS5jIGIvbWFrZWR1
bXBmaWxlLmMKPiBpbmRleCBlMjkwZmJkLi5hYjQwYTU4IDEwMDY0NAo+IC0tLSBhL21ha2VkdW1w
ZmlsZS5jCj4gKysrIGIvbWFrZWR1bXBmaWxlLmMKPiBAQCAtMzQwNiw4ICszNDA2LDYgQEAgc2Vj
dGlvbl9tZW1fbWFwX2FkZHIodW5zaWduZWQgbG9uZyBhZGRyLCB1bnNpZ25lZCBsb25nICptYXBf
bWFzaykKPiAgICBtYXAgPSBVTE9ORyhtZW1fc2VjdGlvbiArIE9GRlNFVChtZW1fc2VjdGlvbi5z
ZWN0aW9uX21lbV9tYXApKTsKPiAgICBtYXNrID0gU0VDVElPTl9NQVBfTUFTSzsKPiAgICAqbWFw
X21hc2sgPSBtYXAgJiB+bWFzazsKPiAtICAgIGlmIChtYXAgPT0gMHgwKQo+IC0gICAgICAgICpt
YXBfbWFzayB8PSBTRUNUSU9OX01BUktFRF9QUkVTRU5UOwoKV2h5IHdhcyB0aGF0IGFkZGVkIGlu
IHRoZSBmaXJzdCBwbGFjZT8gVGhpcyBsb29rcyBsaWtlIGRvbWUgY29tcGF0IGhhbmRsaW5nIHRv
IG1lLiBBcmUgd2Ugc3VyZSB3ZSBjYW4gcmVtb3ZlIGl0PwoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmtleGVjIG1haWxpbmcgbGlzdAprZXhlY0BsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8va2V4ZWMK
