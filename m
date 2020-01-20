Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82E8B14266B
	for <lists+kexec@lfdr.de>; Mon, 20 Jan 2020 09:59:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lmgfRXFP6Csw9eivaOMk5wdJkfovTRli1KO1lD5c71s=; b=R+cXHWLeUzIhXV
	/PWpyzoEvA3nIBhQrlVzpXo7NAs6q0Ye3073/wo1jO3bkLqScQDi3LbNbicIQ4HVmOuFl23N9Ahb3
	zYe3MDAuvzrNMrsqxxNnaP24nkJiEYgFVR4pe9rhtJB3zh2L349UVNZL9aq/VusXSQtC3VrfeboLL
	6VJ0xoE1qVURoMI+dO/f6Kskhl/gt7L5+8gGYaz+H0S7TQRCDRcjMnJNw4UCG/i0WVeBy74rc5/tQ
	4SAZCNc5H2QDlzmLjZ3e+iXvNHvffKoQOf1OQPm+YKlMb6LF1EuQ4Vj6LiUtpHEH1OHTAQ4jzF8Sv
	raaMBN1GqFBirWrZ9Jcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itSuL-0006fw-PT; Mon, 20 Jan 2020 08:59:41 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itSuD-0006el-TI
 for kexec@lists.infradead.org; Mon, 20 Jan 2020 08:59:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579510771;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=0eEvcYXrImktbDhejMdpn36SmmOc+49hVNYseiu3Eso=;
 b=GKsjPTDl1dEnD6jRrJjCUK9NFUyowtokq94XCwuXu284xXISO1hNmX/u0Z86TM5Q30n1nD
 He6I4vGOAGn6tvye6/Imolty82Vr1wPtYH5N3X/PCsbeaDCNmggPFyGJJDPtbMsKNkhiVs
 d6xTayhRmU2CrBUh4zExVy6Lku2t8ZY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-431-jBievlxSNwKVYK3PQdABiA-1; Mon, 20 Jan 2020 03:59:28 -0500
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4E70B1088386;
 Mon, 20 Jan 2020 08:59:26 +0000 (UTC)
Received: from localhost (ovpn-12-101.pek2.redhat.com [10.72.12.101])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 3409A10013A7;
 Mon, 20 Jan 2020 08:59:22 +0000 (UTC)
Date: Mon, 20 Jan 2020 16:59:19 +0800
From: Baoquan He <bhe@redhat.com>
To: David Hildenbrand <david@redhat.com>
Subject: Re: [PATCH] makedumpfile: cope with not-present mem section
Message-ID: <20200120085919.GB16539@MiWiFi-R3L-srv>
References: <1579487124-28426-1-git-send-email-piliu@redhat.com>
 <2AA47CAB-ED13-4A0A-9288-063832158203@redhat.com>
MIME-Version: 1.0
In-Reply-To: <2AA47CAB-ED13-4A0A-9288-063832158203@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-MC-Unique: jBievlxSNwKVYK3PQdABiA-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_005934_024501_ABFB35DB 
X-CRM114-Status: GOOD (  17.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
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
Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>, Pingfan Liu <piliu@redhat.com>,
 kexec@lists.infradead.org, Michal Hocko <mhocko@kernel.org>,
 Qian Cai <cai@lca.pw>, Andrew Morton <akpm@linux-foundation.org>,
 Dan Williams <dan.j.williams@intel.com>, Oscar Salvador <osalvador@suse.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

T24gMDEvMjAvMjAgYXQgMDk6MzNhbSwgRGF2aWQgSGlsZGVuYnJhbmQgd3JvdGU6Cj4gCj4gCj4g
PiBBbSAyMC4wMS4yMDIwIHVtIDAzOjI1IHNjaHJpZWIgUGluZ2ZhbiBMaXUgPHBpbGl1QHJlZGhh
dC5jb20+Ogo+ID4gCj4gPiDvu79BZnRlciBrZXJuZWwgY29tbWl0IGJhNzJiNGM4Y2Y2MCAoIm1t
L3NwYXJzZW1lbTogc3VwcG9ydCBzdWItc2VjdGlvbgo+ID4gaG90cGx1ZyIpLCB3aGVuIGhvdC1y
ZW1vdmVkLCBzZWN0aW9uX21lbV9tYXAgaXMgc3RpbGwgZW5jb2RlZCB3aXRoIHNlY3Rpb24KPiA+
IHN0YXJ0IHBmbiwgbm90IE5VTEwuIFRoaXMgYnJlYWsgdGhlIGN1cnJlbnQgbWFrZWR1bXBmaWxl
Lgo+ID4gCj4gPiBXaGF0ZXZlciBzZWN0aW9uX21lbV9tYXAgY29kaW5nIGluZm8gYWZ0ZXIgaG90
LXJlbW92ZWQsIGl0IGlzIHJlbGlhYmxlCj4gPiBqdXN0IHRvIHdvcmsgb24gU0VDVElPTl9NQVJL
RURfUFJFU0VOVCBiaXQuIEZpeGluZyBtYWtlZHVtcGZpbGUgYnkgdGhpcwo+ID4gd2F5Lgo+ID4g
Cj4gPiBTaWduZWQtb2ZmLWJ5OiBQaW5nZmFuIExpdSA8cGlsaXVAcmVkaGF0LmNvbT4KPiA+IFRv
OiBrZXhlY0BsaXN0cy5pbmZyYWRlYWQub3JnCj4gPiBDYzogS2F6dWhpdG8gSGFnaW8gPGstaGFn
aW9AYWIuanAubmVjLmNvbT4KPiA+IENjOiBCYW9xdWFuIEhlIDxiaGVAcmVkaGF0LmNvbT4KPiA+
IENjOiBEYXZpZCBIaWxkZW5icmFuZCA8ZGF2aWRAcmVkaGF0LmNvbT4KPiA+IENjOiBBbmRyZXcg
TW9ydG9uIDxha3BtQGxpbnV4LWZvdW5kYXRpb24ub3JnPgo+ID4gQ2M6IERhbiBXaWxsaWFtcyA8
ZGFuLmoud2lsbGlhbXNAaW50ZWwuY29tPgo+ID4gQ2M6IE9zY2FyIFNhbHZhZG9yIDxvc2FsdmFk
b3JAc3VzZS5kZT4KPiA+IENjOiBNaWNoYWwgSG9ja28gPG1ob2Nrb0BrZXJuZWwub3JnPgo+ID4g
Q2M6IFFpYW4gQ2FpIDxjYWlAbGNhLnB3Pgo+ID4gLS0tCj4gPiBtYWtlZHVtcGZpbGUuYyB8IDYg
Ky0tLS0tCj4gPiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDUgZGVsZXRpb25zKC0p
Cj4gPiAKPiA+IGRpZmYgLS1naXQgYS9tYWtlZHVtcGZpbGUuYyBiL21ha2VkdW1wZmlsZS5jCj4g
PiBpbmRleCBlMjkwZmJkLi5hYjQwYTU4IDEwMDY0NAo+ID4gLS0tIGEvbWFrZWR1bXBmaWxlLmMK
PiA+ICsrKyBiL21ha2VkdW1wZmlsZS5jCj4gPiBAQCAtMzQwNiw4ICszNDA2LDYgQEAgc2VjdGlv
bl9tZW1fbWFwX2FkZHIodW5zaWduZWQgbG9uZyBhZGRyLCB1bnNpZ25lZCBsb25nICptYXBfbWFz
aykKPiA+ICAgIG1hcCA9IFVMT05HKG1lbV9zZWN0aW9uICsgT0ZGU0VUKG1lbV9zZWN0aW9uLnNl
Y3Rpb25fbWVtX21hcCkpOwo+ID4gICAgbWFzayA9IFNFQ1RJT05fTUFQX01BU0s7Cj4gPiAgICAq
bWFwX21hc2sgPSBtYXAgJiB+bWFzazsKPiA+IC0gICAgaWYgKG1hcCA9PSAweDApCj4gPiAtICAg
ICAgICAqbWFwX21hc2sgfD0gU0VDVElPTl9NQVJLRURfUFJFU0VOVDsKPiAKPiBXaHkgd2FzIHRo
YXQgYWRkZWQgaW4gdGhlIGZpcnN0IHBsYWNlPyBUaGlzIGxvb2tzIGxpa2UgZG9tZSBjb21wYXQg
aGFuZGxpbmcgdG8gbWUuIEFyZSB3ZSBzdXJlIHdlIGNhbiByZW1vdmUgaXQ/CgoKVGhlIG9yaWdp
bmFsIGNvZGUgYXNzdW1lcyB0aGF0IHRoZXJlIGFyZSBvbmx5IHR3byBraW5kcyBvZiBtZW1fc2Vj
dGlvbiwKb25lIGlzIGVtcHR5IHZhbHVlLCB0aGUgc2Vjb25kIGlzIGEgcHJlc2VudCBvbmUuIFRo
aXMgcmVtb3ZpbmcgYmVoYXZlcwp0aGUgc2FtZSBhcyB0aGUgb2xkIGNvZGUsIEkgZG9uJ3Qgc2Vl
IGEgcHJvYmxlbSB3aXRoIGl0LgoKSSB0cmllZCB0byB1bmRlcnN0YW5kIHRoZSBjb2RlLCBidXQg
SSBkb24ndCBrbm93IHdoeSBpdCBuZWVkIGNhbGwKdmFsaWRhdGVfbWVtX3NlY3Rpb24oKSB0d2lj
ZSBhbmQgY29tcGFyZSB0aGUgcmV0dXJuZWQgdmFsdWUuCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18Ka2V4ZWMgbWFpbGluZyBsaXN0CmtleGVjQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9rZXhlYwo=
