Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65CFE81A2C
	for <lists+kexec@lfdr.de>; Mon,  5 Aug 2019 15:02:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vj2pGzV+X1xcruU5MS/iNq4/oNvJyM570YiuvxMTOH0=; b=QTWehEi1H5CJO3
	xZ6QKV/L3C1FCV/Ah4VIfVSms7X8JXuvTZWiwlILw3CtcfPqprmY9dSyuiVvHgJOrIUVrLECUnD1K
	RtdihggvFUKyl32Y1+asruh9/VLzayJvrroq3HtQAMQSeV0U4iXWb/VQORiZQ4+gHBExRgyE5UQYY
	CZKp7aXr3RPsp5GDONjIgXzV2e1gX5cDmPHsBY4N9XKUSKCMZiUZuqEkbKdG2EIumh76N+bGxx2/R
	O7i6OJdJangAU5zDo4xbiqusJcY55z7ISRuhSNVFZmOG1IBrebLdDe5zSOovWkqr8PQbJaDfIOqDO
	h4BHo4kqFYpNzReU5riQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hucdJ-0006WO-W4; Mon, 05 Aug 2019 13:02:37 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hucdE-0006PV-Gk
 for kexec@lists.infradead.org; Mon, 05 Aug 2019 13:02:34 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 8AA27B64F;
 Mon,  5 Aug 2019 13:02:29 +0000 (UTC)
Date: Mon, 5 Aug 2019 15:02:21 +0200
From: Borislav Petkov <bp@suse.de>
To: "Chen, Rong A" <rong.a.chen@intel.com>
Subject: Re: [LKP] [x86/boot] 5b51ae969e: kexec boot failed
Message-ID: <20190805130221.GA18887@zn.tnic>
References: <97f74c86-54bd-f165-ce33-b53ca48ab850@intel.com>
 <20190802093024.GB30710@zn.tnic>
 <0f817336-2d87-2110-13c0-e0a417d70e90@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0f817336-2d87-2110-13c0-e0a417d70e90@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_060232_826558_40BD64A8 
X-CRM114-Status: UNSURE (   7.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: x86@kernel.org, Kairui Song <kasong@redhat.com>,
 Baoquan He <bhe@redhat.com>, Dave Young <dyoung@redhat.com>,
 Chao Fan <fanc.fnst@cn.fujitsu.com>, kexec@lists.infradead.org,
 Jun'ichi Nomura <j-nomura@ce.jp.nec.com>, lkp@01.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

T24gTW9uLCBBdWcgMDUsIDIwMTkgYXQgMDc6NDk6NTRQTSArMDgwMCwgQ2hlbiwgUm9uZyBBIHdy
b3RlOgo+IFdlIHVzZSB0aGUgZm9sbG93aW5nIGNvbW1hbmQgdG8gYm9vdCBhIG5ldyBrZXJuZWw6
Cj4ga2V4ZWMgLS1ub2VmaSAtbCAvb3B0L3Jvb3Rmcy90bXAvcGtnL2xpbnV4L3g4Nl82NC1yaGVs
LTcuNi9nY2MtNy81YjUxYWU5NjllM2Q4YWIwMTM0ZWUzYzk4YTc2OWFkNmQyY2MyZTI0L3ZtbGlu
dXotNS4yLjAtcmMzLTAwMDA0LWc1YjUxYWU5NjllM2Q4YQo+IC0taW5pdHJkPS9vcHQvcm9vdGZz
L3RtcC9pbml0cmQtY29uY2F0ZW5hdGVkCgpBbmQgdGhpcyAiY29uY2F0ZW5hdGVkIiBpbml0cmQs
IGhvdyBkbyB5b3UgZ2VuZXJhdGUgdGhhdD8KCkZXSVcsIHRyeWluZyB0aGlzIGluIGEgdm0gZG9l
c24ndCBzZWVtIHRvIHdvcmsgYmVjYXVzZSBvZiBFRkkgZXZlbiB0aG91Z2gKLS1ub2VmaSBpcyBz
dXBwbGllZCBvbiB0aGUgY21kbGluZToKCiQga2V4ZWMgLS1ub2VmaSAtbCAvbW50L3RtcC9ieklt
YWdlClVua25vd24gdHlwZSAoUmVzZXJ2ZWQpIHdoaWxlIHBhcnNpbmcgL3N5cy9maXJtd2FyZS9t
ZW1tYXAvNS90eXBlLiBQbGVhc2UgcmVwb3J0IHRoaXMgYXMgYnVnLiBVc2luZyBSQU5HRV9SRVNF
UlZFRCBub3cuClVua25vd24gdHlwZSAoUmVzZXJ2ZWQpIHdoaWxlIHBhcnNpbmcgL3N5cy9maXJt
d2FyZS9tZW1tYXAvMS90eXBlLiBQbGVhc2UgcmVwb3J0IHRoaXMgYXMgYnVnLiBVc2luZyBSQU5H
RV9SRVNFUlZFRCBub3cuClVua25vd24gdHlwZSAoUmVzZXJ2ZWQpIHdoaWxlIHBhcnNpbmcgL3N5
cy9maXJtd2FyZS9tZW1tYXAvNi90eXBlLiBQbGVhc2UgcmVwb3J0IHRoaXMgYXMgYnVnLiBVc2lu
ZyBSQU5HRV9SRVNFUlZFRCBub3cuClVua25vd24gdHlwZSAoUmVzZXJ2ZWQpIHdoaWxlIHBhcnNp
bmcgL3N5cy9maXJtd2FyZS9tZW1tYXAvNC90eXBlLiBQbGVhc2UgcmVwb3J0IHRoaXMgYXMgYnVn
LiBVc2luZyBSQU5HRV9SRVNFUlZFRCBub3cuClVua25vd24gdHlwZSAoUmVzZXJ2ZWQpIHdoaWxl
IHBhcnNpbmcgL3N5cy9maXJtd2FyZS9tZW1tYXAvMi90eXBlLiBQbGVhc2UgcmVwb3J0IHRoaXMg
YXMgYnVnLiBVc2luZyBSQU5HRV9SRVNFUlZFRCBub3cuCgpJIG5lZWQgdG8gdHJ5IGl0IG9uIGEg
cmVhbCBib3guCgotLSAKUmVnYXJkcy9HcnVzcywKICAgIEJvcmlzLgoKU1VTRSBMaW51eCBHbWJI
LCBHRjogRmVsaXggSW1lbmTDtnJmZmVyLCBNYXJ5IEhpZ2dpbnMsIFNyaSBSYXNpYWgsIEhSQiAy
MTI4NCAoQUcgTsO8cm5iZXJnKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18Ka2V4ZWMgbWFpbGluZyBsaXN0CmtleGVjQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9rZXhlYwo=
