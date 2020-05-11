Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE05E1CE944
	for <lists+kexec@lfdr.de>; Tue, 12 May 2020 01:36:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BZKxzovrUOVe830kRdJuLTwNeFXbQPLp6+H99GPEt4E=; b=R64/s3RGuCxuJY
	cNTaYCg9/YF1xb+Ts2Aj38edJKHnMwzyzrOmPHyFxnV7P/Yemm81LIPMJfIejA2v0r6mgbNdoH7Oz
	RKogxsVEjSjnWdg+ShhGIm7XoMOjGxGjucCd483WP3vNzKxRGN2eT2QGxQzr6Q6sFqkhxrFEnxLYE
	I+C/B5gea4l/zsvO6uDQHgrP4XvQGMtDFAMONOw6H8NmVxa8/54MA9OptZUiH3bgimQ33PPVBsbLR
	jOhFUNdmMKpTLPTxIKkRg2QwbtYjO3W7jcvjqSdurPt1ucJsCwk/Fs4e8hy/WbAXuiK//Sh6yk6cc
	9eHnsh7FibGrmakaWAxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYHyM-0007i3-Ga; Mon, 11 May 2020 23:36:34 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYHvP-00032v-6a
 for kexec@lists.infradead.org; Mon, 11 May 2020 23:33:34 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04BNWCCB096110;
 Mon, 11 May 2020 23:32:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=SUCMQvMGKbnOyya5OIEHaJXAFNdV/cZdhlH9Unt5TlA=;
 b=oO5fFGiOYKj0RbbJQITeWxcUQMrXtrZVRi3R2Fulw132X/tYQnlj79YbUdTnBWhNKfSH
 eV6tEp/NNkqh3DfCWTXfsx30F6h81y0TCEgFhcc7NHVxQ0OAN865/dleihwB2OCr7sAh
 rzBuM+aUlIcGjkCV6wA9EUQo2jOpXSVm/Kf0bupmgtXOAcgYhLhoR8filBeCE6RdqM1Q
 gXw2VdmADaEGV5FygM++Io6vC8Qeecbza5waPi2DapIqBHyePc6WcStmmn19xKeREfhq
 yt2kJpdWBwhG/ImSssEqd3EBJXWPhOlHW4qZh4TI0a2hrJpMgzeb2yDU34zDmQZkuhpG qA== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 30x3mbqy9w-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 11 May 2020 23:32:14 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04BNNu4b005736;
 Mon, 11 May 2020 23:29:56 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 30ydsp8634-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 11 May 2020 23:29:56 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 04BNTbb3004361;
 Mon, 11 May 2020 23:29:37 GMT
Received: from [10.154.189.6] (/10.154.189.6)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 11 May 2020 16:29:37 -0700
Subject: Re: [RFC 14/43] mm: memblock: PKRAM: prevent memblock resize from
 clobbering preserved pages
To: Mike Rapoport <rppt@linux.ibm.com>
References: <1588812129-8596-1-git-send-email-anthony.yznaga@oracle.com>
 <1588812129-8596-15-git-send-email-anthony.yznaga@oracle.com>
 <20200511135727.GA983798@linux.ibm.com>
From: Anthony Yznaga <anthony.yznaga@oracle.com>
Organization: Oracle Corporation
Message-ID: <54773d69-1a2b-1ab3-24d9-b322d580fb42@oracle.com>
Date: Mon, 11 May 2020 16:29:33 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200511135727.GA983798@linux.ibm.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9618
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 suspectscore=2 mlxscore=0
 adultscore=0 mlxlogscore=999 malwarescore=0 bulkscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2005110172
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9618
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 impostorscore=0
 mlxscore=0 suspectscore=2 bulkscore=0 mlxlogscore=999 phishscore=0
 malwarescore=0 lowpriorityscore=0 spamscore=0 adultscore=0 clxscore=1015
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2005110173
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_163331_340862_FE65B887 
X-CRM114-Status: GOOD (  21.86  )
X-Spam-Score: -2.7 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.85 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: x86@kernel.org, linux-doc@vger.kernel.org, gustavo@embeddedor.com,
 peterz@infradead.org, kexec@lists.infradead.org, paul.c.lai@intel.com,
 dave.hansen@linux.intel.com, zhenzhong.duan@oracle.com, lei.l.li@intel.com,
 linux-mm@kvack.org, nivedita@alum.mit.edu, ziqian.lzq@antfin.com,
 hpa@zytor.com, ardb@kernel.org, ashok.raj@intel.com, bhe@redhat.com,
 corbet@lwn.net, daniel.kiper@oracle.com, rafael.j.wysocki@intel.com,
 hughd@google.com, willy@infradead.org, mhocko@kernel.org, mingo@redhat.com,
 vdavydov.dev@gmail.com, ying.huang@intel.com, Thomas.Lendacky@amd.com,
 kevin.tian@intel.com, jroedel@suse.de, keescook@chromium.org,
 dan.j.williams@intel.com, bp@alien8.de, zhiyuan.lv@intel.com, luto@kernel.org,
 tglx@linutronix.de, andriy.shevchenko@linux.intel.com, dima@golovin.in,
 yang.shi@linux.alibaba.com, ndesaulniers@google.com,
 linux-kernel@vger.kernel.org, guro@fb.com, minchan@kernel.org,
 ebiederm@xmission.com, jason.zeng@intel.com, hannes@cmpxchg.org,
 linux-fsdevel@vger.kernel.org, akpm@linux-foundation.org, masahiroy@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

CgpPbiA1LzExLzIwIDY6NTcgQU0sIE1pa2UgUmFwb3BvcnQgd3JvdGU6Cj4gT24gV2VkLCBNYXkg
MDYsIDIwMjAgYXQgMDU6NDE6NDBQTSAtMDcwMCwgQW50aG9ueSBZem5hZ2Egd3JvdGU6Cj4+IFRo
ZSBzaXplIG9mIHRoZSBtZW1ibG9jayByZXNlcnZlZCBhcnJheSBtYXkgYmUgaW5jcmVhc2VkIHdo
aWxlIHByZXNlcnZlZAo+PiBwYWdlcyBhcmUgYmVpbmcgcmVzZXJ2ZWQuIFdoZW4gdGhpcyBoYXBw
ZW5zLCBwcmVzZXJ2ZWQgcGFnZXMgdGhhdCBoYXZlCj4+IG5vdCB5ZXQgYmVlbiByZXNlcnZlZCBh
cmUgYXQgcmlzayBmb3IgYmVpbmcgY2xvYmJlcmVkIHdoZW4gc3BhY2UgZm9yIGEKPj4gbGFyZ2Vy
IGFycmF5IGlzIGFsbG9jYXRlZC4KPj4gV2hlbiBjYWxsZWQgZnJvbSBtZW1ibG9ja19kb3VibGVf
YXJyYXkoKSwgYSB3cmFwcGVyIGFyb3VuZAo+PiBtZW1ibG9ja19maW5kX2luX3JhbmdlKCkgd2Fs
a3MgdGhlIHByZXNlcnZlZCBwYWdlcyBwYWdldGFibGUgdG8gZmluZAo+PiBzdWZmaWNpZW50bHkg
c2l6ZWQgcmFuZ2VzIHdpdGhvdXQgcHJlc2VydmVkIHBhZ2VzIGFuZCBwYXNzZXMgdGhlbSB0bwo+
PiBtZW1ibG9ja19maW5kX2luX3JhbmdlKCkuCj4gSSdkIHN1Z2dlc3QgdG8gY3JlYXRlIGFuIGFy
cmF5IG9mIG1lbWJsb2NrX3JlZ2lvbidzIHRoYXQgd2lsbCBjb250YWluCj4gdGhlIFBLUkFNIHJh
bmdlcyBiZWZvcmUga2V4ZWMgYW5kIHBhc3MgdGhpcyBhcnJheSB0byB0aGUgbmV3IGtlcm5lbC4K
PiBUaGVuLCBzb21ld2hlcmUgaW4gc3RhcnRfa2VyZW5lbCgpIHJlcGxhY2UgcmVwbGFjZQo+IG1l
bWJsb2NrLnJlc2VydmVkLT5yZWdpb25zIHdpdGggdGhhdCBhcnJheS4gCgpJJ2xsIGxvb2sgaW50
byBkb2luZyB0aGlzLsKgIFRoYW5rcyEKCkFudGhvbnkKCj4KPj4gU2lnbmVkLW9mZi1ieTogQW50
aG9ueSBZem5hZ2EgPGFudGhvbnkueXpuYWdhQG9yYWNsZS5jb20+Cj4+IC0tLQo+PiAgaW5jbHVk
ZS9saW51eC9wa3JhbS5oIHwgIDMgKysrCj4+ICBtbS9tZW1ibG9jay5jICAgICAgICAgfCAxNSAr
KysrKysrKysrKysrLS0KPj4gIG1tL3BrcmFtLmMgICAgICAgICAgICB8IDUxICsrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+PiAgMyBmaWxlcyBjaGFu
Z2VkLCA2NyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEv
aW5jbHVkZS9saW51eC9wa3JhbS5oIGIvaW5jbHVkZS9saW51eC9wa3JhbS5oCj4+IGluZGV4IGVk
YzVkOGJlZjlkMy4uNDA5MDIyZTE0NzJmIDEwMDY0NAo+PiAtLS0gYS9pbmNsdWRlL2xpbnV4L3Br
cmFtLmgKPj4gKysrIGIvaW5jbHVkZS9saW51eC9wa3JhbS5oCj4+IEBAIC02Miw2ICs2Miw5IEBA
IHN0cnVjdCBwYWdlICpwa3JhbV9sb2FkX3BhZ2Uoc3RydWN0IHBrcmFtX3N0cmVhbSAqcHMsIHVu
c2lnbmVkIGxvbmcgKmluZGV4LAo+PiAgc3NpemVfdCBwa3JhbV93cml0ZShzdHJ1Y3QgcGtyYW1f
c3RyZWFtICpwcywgY29uc3Qgdm9pZCAqYnVmLCBzaXplX3QgY291bnQpOwo+PiAgc2l6ZV90IHBr
cmFtX3JlYWQoc3RydWN0IHBrcmFtX3N0cmVhbSAqcHMsIHZvaWQgKmJ1Ziwgc2l6ZV90IGNvdW50
KTsKPj4gIAo+PiArcGh5c19hZGRyX3QgcGtyYW1fbWVtYmxvY2tfZmluZF9pbl9yYW5nZShwaHlz
X2FkZHJfdCBzdGFydCwgcGh5c19hZGRyX3QgZW5kLAo+PiArCQkJCQkgcGh5c19hZGRyX3Qgc2l6
ZSwgcGh5c19hZGRyX3QgYWxpZ24pOwo+PiArCj4+ICAjaWZkZWYgQ09ORklHX1BLUkFNCj4+ICBl
eHRlcm4gdW5zaWduZWQgbG9uZyBwa3JhbV9yZXNlcnZlZF9wYWdlczsKPj4gIHZvaWQgcGtyYW1f
cmVzZXJ2ZSh2b2lkKTsKPj4gZGlmZiAtLWdpdCBhL21tL21lbWJsb2NrLmMgYi9tbS9tZW1ibG9j
ay5jCj4+IGluZGV4IGM3OWJhNmY5OTIwYy4uNjlhZTg4M2I4ZDIxIDEwMDY0NAo+PiAtLS0gYS9t
bS9tZW1ibG9jay5jCj4+ICsrKyBiL21tL21lbWJsb2NrLmMKPj4gQEAgLTE2LDYgKzE2LDcgQEAK
Pj4gICNpbmNsdWRlIDxsaW51eC9rbWVtbGVhay5oPgo+PiAgI2luY2x1ZGUgPGxpbnV4L3NlcV9m
aWxlLmg+Cj4+ICAjaW5jbHVkZSA8bGludXgvbWVtYmxvY2suaD4KPj4gKyNpbmNsdWRlIDxsaW51
eC9wa3JhbS5oPgo+PiAgCj4+ICAjaW5jbHVkZSA8YXNtL3NlY3Rpb25zLmg+Cj4+ICAjaW5jbHVk
ZSA8bGludXgvaW8uaD4KPj4gQEAgLTM0OSw2ICszNTAsMTYgQEAgcGh5c19hZGRyX3QgX19pbml0
X21lbWJsb2NrIG1lbWJsb2NrX2ZpbmRfaW5fcmFuZ2UocGh5c19hZGRyX3Qgc3RhcnQsCj4+ICAJ
cmV0dXJuIHJldDsKPj4gIH0KPj4gIAo+PiArcGh5c19hZGRyX3QgX19pbml0X21lbWJsb2NrIF9f
bWVtYmxvY2tfZmluZF9pbl9yYW5nZShwaHlzX2FkZHJfdCBzdGFydCwKPj4gKwkJCQkJcGh5c19h
ZGRyX3QgZW5kLCBwaHlzX2FkZHJfdCBzaXplLAo+PiArCQkJCQlwaHlzX2FkZHJfdCBhbGlnbikK
Pj4gK3sKPj4gKwlpZiAoSVNfRU5BQkxFRChDT05GSUdfUEtSQU0pKQo+PiArCQlyZXR1cm4gcGty
YW1fbWVtYmxvY2tfZmluZF9pbl9yYW5nZShzdGFydCwgZW5kLCBzaXplLCBhbGlnbik7Cj4+ICsJ
ZWxzZQo+PiArCQlyZXR1cm4gbWVtYmxvY2tfZmluZF9pbl9yYW5nZShzdGFydCwgZW5kLCBzaXpl
LCBhbGlnbik7Cj4+ICt9Cj4+ICsKPj4gIHN0YXRpYyB2b2lkIF9faW5pdF9tZW1ibG9jayBtZW1i
bG9ja19yZW1vdmVfcmVnaW9uKHN0cnVjdCBtZW1ibG9ja190eXBlICp0eXBlLCB1bnNpZ25lZCBs
b25nIHIpCj4+ICB7Cj4+ICAJdHlwZS0+dG90YWxfc2l6ZSAtPSB0eXBlLT5yZWdpb25zW3JdLnNp
emU7Cj4+IEBAIC00NDcsMTEgKzQ1OCwxMSBAQCBzdGF0aWMgaW50IF9faW5pdF9tZW1ibG9jayBt
ZW1ibG9ja19kb3VibGVfYXJyYXkoc3RydWN0IG1lbWJsb2NrX3R5cGUgKnR5cGUsCj4+ICAJCWlm
ICh0eXBlICE9ICZtZW1ibG9jay5yZXNlcnZlZCkKPj4gIAkJCW5ld19hcmVhX3N0YXJ0ID0gbmV3
X2FyZWFfc2l6ZSA9IDA7Cj4+ICAKPj4gLQkJYWRkciA9IG1lbWJsb2NrX2ZpbmRfaW5fcmFuZ2Uo
bmV3X2FyZWFfc3RhcnQgKyBuZXdfYXJlYV9zaXplLAo+PiArCQlhZGRyID0gX19tZW1ibG9ja19m
aW5kX2luX3JhbmdlKG5ld19hcmVhX3N0YXJ0ICsgbmV3X2FyZWFfc2l6ZSwKPj4gIAkJCQkJCW1l
bWJsb2NrLmN1cnJlbnRfbGltaXQsCj4+ICAJCQkJCQluZXdfYWxsb2Nfc2l6ZSwgUEFHRV9TSVpF
KTsKPj4gIAkJaWYgKCFhZGRyICYmIG5ld19hcmVhX3NpemUpCj4+IC0JCQlhZGRyID0gbWVtYmxv
Y2tfZmluZF9pbl9yYW5nZSgwLAo+PiArCQkJYWRkciA9IF9fbWVtYmxvY2tfZmluZF9pbl9yYW5n
ZSgwLAo+PiAgCQkJCW1pbihuZXdfYXJlYV9zdGFydCwgbWVtYmxvY2suY3VycmVudF9saW1pdCks
Cj4+ICAJCQkJbmV3X2FsbG9jX3NpemUsIFBBR0VfU0laRSk7Cj4+ICAKPj4gZGlmZiAtLWdpdCBh
L21tL3BrcmFtLmMgYi9tbS9wa3JhbS5jCj4+IGluZGV4IGRkM2M4OTYxNDAxMC4uZTQ5YzliY2Qz
ODU0IDEwMDY0NAo+PiAtLS0gYS9tbS9wa3JhbS5jCj4+ICsrKyBiL21tL3BrcmFtLmMKPj4gQEAg
LTEyMzgsMyArMTIzOCw1NCBAQCB2b2lkIHBrcmFtX2ZyZWVfcGd0KHZvaWQpCj4+ICAJX19mcmVl
X3BhZ2VzX2NvcmUodmlydF90b19wYWdlKHBrcmFtX3BnZCksIDApOwo+PiAgCXBrcmFtX3BnZCA9
IE5VTEw7Cj4+ICB9Cj4+ICsKPj4gK3N0YXRpYyBpbnQgX19pbml0X21lbWJsb2NrIHBrcmFtX21l
bWJsb2NrX2ZpbmRfY2Ioc3RydWN0IHBrcmFtX3BnX3N0YXRlICpzdCwgdW5zaWduZWQgbG9uZyBi
YXNlLCB1bnNpZ25lZCBsb25nIHNpemUpCj4+ICt7Cj4+ICsJdW5zaWduZWQgbG9uZyBlbmQgPSBi
YXNlICsgc2l6ZTsKPj4gKwl1bnNpZ25lZCBsb25nIGFkZHI7Cj4+ICsKPj4gKwlpZiAoc2l6ZSA8
IHN0LT5taW5fc2l6ZSkKPj4gKwkJcmV0dXJuIDA7Cj4+ICsKPj4gKwlhZGRyID0gIG1lbWJsb2Nr
X2ZpbmRfaW5fcmFuZ2UoYmFzZSwgZW5kLCBzdC0+bWluX3NpemUsIFBBR0VfU0laRSk7Cj4+ICsJ
aWYgKCFhZGRyKQo+PiArCQlyZXR1cm4gMDsKPj4gKwo+PiArCXN0LT5yZXR2YWwgPSBhZGRyOwo+
PiArCXJldHVybiAxOwo+PiArfQo+PiArCj4+ICsvKgo+PiArICogSXQgbWF5IGJlIG5lY2Vzc2Fy
eSB0byBhbGxvY2F0ZSBhIGxhcmdlciByZXNlcnZlZCBtZW1ibG9jayBhcnJheQo+PiArICogd2hp
bGUgcG9wdWxhdGluZyBpdCB3aXRoIHJhbmdlcyBvZiBwcmVzZXJ2ZWQgcGFnZXMuICBUbyBhdm9p
ZAo+PiArICogdHJhbXBsaW5nIHByZXNlcnZlZCBwYWdlcyB0aGF0IGhhdmUgbm90IHlldCBiZWVu
IGFkZGVkIHRvIHRoZQo+PiArICogbWVtYmxvY2sgcmVzZXJ2ZWQgbGlzdCB0aGlzIGZ1bmN0aW9u
IGltcGxlbWVudHMgYSB3cmFwcGVyIGFyb3VuZAo+PiArICogbWVtYmxvY2tfZmluZF9pbl9yYW5n
ZSgpIHRoYXQgcmVzdHJpY3RzIHNlYXJjaGVzIHRvIHN1YnJhbmdlcwo+PiArICogdGhhdCBkbyBu
b3QgY29udGFpbiBwcmVzZXJ2ZWQgcGFnZXMuCj4+ICsgKi8KPj4gK3BoeXNfYWRkcl90IF9faW5p
dF9tZW1ibG9jayBwa3JhbV9tZW1ibG9ja19maW5kX2luX3JhbmdlKHBoeXNfYWRkcl90IHN0YXJ0
LAo+PiArCQkJCQlwaHlzX2FkZHJfdCBlbmQsIHBoeXNfYWRkcl90IHNpemUsCj4+ICsJCQkJCXBo
eXNfYWRkcl90IGFsaWduKQo+PiArewo+PiArCXN0cnVjdCBwa3JhbV9wZ19zdGF0ZSBzdCA9IHsK
Pj4gKwkJLnJhbmdlX2NiID0gcGtyYW1fbWVtYmxvY2tfZmluZF9jYiwKPj4gKwkJLm1pbl9hZGRy
ID0gc3RhcnQsCj4+ICsJCS5tYXhfYWRkciA9IGVuZCwKPj4gKwkJLm1pbl9zaXplID0gUEFHRV9B
TElHTihzaXplKSwKPj4gKwkJLmZpbmRfaG9sZXMgPSB0cnVlLAo+PiArCX07Cj4+ICsKPj4gKwlp
ZiAoIXBrcmFtX3Jlc2VydmF0aW9uX2luX3Byb2dyZXNzKQo+PiArCQlyZXR1cm4gbWVtYmxvY2tf
ZmluZF9pbl9yYW5nZShzdGFydCwgZW5kLCBzaXplLCBhbGlnbik7Cj4+ICsKPj4gKwlpZiAoIXBr
cmFtX3BnZCkgewo+PiArCQlXQVJOX09OQ0UoMSwgIk5vIHByZXNlcnZlZCBwYWdlcyBwYWdldGFi
bGVcbiIpOwo+PiArCQlyZXR1cm4gbWVtYmxvY2tfZmluZF9pbl9yYW5nZShzdGFydCwgZW5kLCBz
aXplLCBhbGlnbik7Cj4+ICsJfQo+PiArCj4+ICsJV0FSTl9PTkNFKG1lbWJsb2NrX2JvdHRvbV91
cCgpLCAiUEtSQU06IGJvdHRvbSB1cCBtZW1ibG9jayBhbGxvY2F0aW9uIG5vdCB5ZXQgc3VwcG9y
dGVkXG4iKTsKPj4gKwo+PiArCXBrcmFtX3dhbGtfcGd0X3Jldigmc3QsIHBrcmFtX3BnZCk7Cj4+
ICsKPj4gKwlyZXR1cm4gc3QucmV0dmFsOwo+PiArfQo+PiAtLSAKPj4gMi4xMy4zCj4+CgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Ka2V4ZWMgbWFpbGlu
ZyBsaXN0CmtleGVjQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9rZXhlYwo=
