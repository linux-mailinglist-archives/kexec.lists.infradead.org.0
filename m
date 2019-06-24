Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C880151B1B
	for <lists+kexec@lfdr.de>; Mon, 24 Jun 2019 21:02:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4pNJmTJX/zH8WuHOyXMrJO9wZMTtTAKZCalxn1LlxOw=; b=pYj1i6/sm11waQE/0rgq1dzO1
	8KtqN4PHl8h8L6eh8XPY3yXvrj8SsMQmYXJqcyn29MaxT8OwaOFjp2noLZcCtLJEUPJaOTbALMmOV
	LZflmlv9asFroGKtbmDzOibdSLYEej42cd8kLsWDqw/yWXVLYG6MuZWRGvPgDiGEntm8rMC8+a2e5
	EZqhPqgtwziq/5NXSFXj2Su9d/2WGrvXBhazEAnuq3mCpKAz7hRj0FhdZxoNjuwyPCfxToOn1pfeF
	iPnEl5BIliCSr9b64rBvwmuDHiboaHfdoAMbzfTagathOCuacYc59AANmRFjJZRZSws7SqvsvuxTO
	J2xzH9FFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfUEb-0006wN-Fn; Mon, 24 Jun 2019 19:02:33 +0000
Received: from smtp-fw-4101.amazon.com ([72.21.198.25])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfUEX-0006vg-VN
 for kexec@lists.infradead.org; Mon, 24 Jun 2019 19:02:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1561402949; x=1592938949;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=Fnm2eWyB+1jy6Egbk70y8+MqYiwm7WhpVGaZUD+rpdA=;
 b=Y3Bb3rF2OofgZAgNtrkHUYDHWNzlqBr1bEQ1fZYU/Ka0g3b64rMx4hni
 jZAEtWVWjihAadHo+U8q2tHoDNIHVvUtB+iXH2Akz4p4hpzMkj5NmPpKU
 arip2Ry9igfodQRzCcHOXybFWrque9rJ72wceUPAHq5w+LU6ZSRPFp2yL k=;
X-IronPort-AV: E=Sophos;i="5.62,413,1554768000"; d="scan'208";a="771794727"
Received: from iad6-co-svc-p1-lb1-vlan3.amazon.com (HELO
 email-inbound-relay-1d-2c665b5d.us-east-1.amazon.com) ([10.124.125.6])
 by smtp-border-fw-out-4101.iad4.amazon.com with ESMTP;
 24 Jun 2019 19:02:26 +0000
Received: from EX13MTAUEB001.ant.amazon.com
 (iad55-ws-svc-p15-lb9-vlan3.iad.amazon.com [10.40.159.166])
 by email-inbound-relay-1d-2c665b5d.us-east-1.amazon.com (Postfix) with ESMTPS
 id 2E5EBA2314; Mon, 24 Jun 2019 19:02:25 +0000 (UTC)
Received: from EX13D08UEB001.ant.amazon.com (10.43.60.245) by
 EX13MTAUEB001.ant.amazon.com (10.43.60.129) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Mon, 24 Jun 2019 19:02:25 +0000
Received: from EX13MTAUEB001.ant.amazon.com (10.43.60.96) by
 EX13D08UEB001.ant.amazon.com (10.43.60.245) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Mon, 24 Jun 2019 19:02:24 +0000
Received: from u908889d5e8f057.ant.amazon.com (10.95.80.226) by
 mail-relay.amazon.com (10.43.60.129) with Microsoft SMTP Server (TLS) id
 15.0.1367.3 via Frontend Transport; Mon, 24 Jun 2019 19:02:23 +0000
Subject: Re: [PATCH 1/3] xen: Avoid overlapping segments in low memory
To: Simon Horman <horms@verge.net.au>, Varad Gautam <vrd@amazon.de>
References: <1558423948-24583-1-git-send-email-vrd@amazon.de>
 <20190531090746.ozf6kyezmj77gqyo@verge.net.au>
From: <vrd@amazon.com>
Message-ID: <38c53c73-30ad-0985-c08b-6b29b4ab8698@amazon.com>
Date: Mon, 24 Jun 2019 21:02:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190531090746.ozf6kyezmj77gqyo@verge.net.au>
Content-Language: en-US
Precedence: Bulk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_120230_188104_4E94D842 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: -12.7 (------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-12.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [72.21.198.25 listed in list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.29
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Cc: kexec@lists.infradead.org, David Woodhouse <dwmw@amazon.co.uk>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

T24gNS8zMS8xOSAxMTowNyBBTSwgU2ltb24gSG9ybWFuIHdyb3RlOgo+IE9uIFR1ZSwgTWF5IDIx
LCAyMDE5IGF0IDA5OjMyOjI2QU0gKzAyMDAsIFZhcmFkIEdhdXRhbSB3cm90ZToKPj4gRnJvbTog
RGF2aWQgV29vZGhvdXNlIDxkd213QGFtYXpvbi5jby51az4KPj4KPj4gVW5saWtlIExpbnV4IHdo
aWNoIGNyZWF0ZXMgYSBmdWxsIGlkZW50aXR5IG1hcHBpbmcsIFhlbiBvbmx5IG1hcHMgdGhvc2UK
Pj4gc2VnbWVudHMgd2hpY2ggYXJlIGV4cGxpY2l0bHkgcmVxdWVzdGVkLiBUaGVyZWZvcmUsIHhl
bl9rZXhlY19sb2FkKCkKPj4gc2lsZW50bHkgYWRkcyBpbiBhIHNlZ21lbnQgZnJvbSB6ZXJvIHRv
IDFNaUIgdG8gZW5zdXJlIHRoYXQgVkdBIG1lbW9yeQo+PiBhbmQgb3RoZXIgdGhpbmdzIGFyZSBh
Y2Nlc3NpYmxlLgo+Pgo+PiBIb3dldmVyLCB0aGlzIGRvZXNuJ3Qgd29yayB3aGVuIHRoZXJlIGFy
ZSBhbHJlYWR5IHNlZ21lbnRzIHRvIGJlIGxvYWRlZAo+PiB1bmRlciAxTWlCLCBiZWNhdXNlIHRo
ZSBvdmVybGFwIGNhdXNlcyBYZW4gdG8gcmVqZWN0IHRoZSBrZXhlY19sb2FkLgo+Pgo+PiBCZSBt
b3JlIGNhcmVmdWwgYW5kIGp1c3QgaW5maWxsIHRoZSByYW5nZXMgd2hpY2ggYXJlIHJlcXVpcmVk
IGluc3RlYWQKPj4gb2YgbmHDr3ZlbHkgYWRkaW5nIGEgZnVsbCAwLTFNaUIgc2VnbWVudCBhdCB0
aGUgZW5kLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBEYXZpZCBXb29kaG91c2UgPGR3bXdAYW1hem9u
LmNvLnVrPgo+IFRoaXMgcGF0Y2ggYXBwZWFycyB0byBiZSBwcmVzZW50IGluIHRoZSBrZXhlYy10
b29scyB0cmVlIGFzOgo+Cj4gZWZmNTMwODk1MjNjIHhlbjogQXZvaWQgb3ZlcmxhcHBpbmcgc2Vn
bWVudHMgaW4gbG93IG1lbW9yeQoKQWgsIHBsZWFzZSBpZ25vcmUgdGhpcyBvbmUuIEkgaGFkIGFu
IGVhcmxpZXIgY2hlY2tvdXQuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18Ka2V4ZWMgbWFpbGluZyBsaXN0CmtleGVjQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9rZXhlYwo=
