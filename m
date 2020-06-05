Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B86C41EFFEA
	for <lists+kexec@lfdr.de>; Fri,  5 Jun 2020 20:37:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s/gPgbxokYIPRjzlOIDqPqB1reZeD7R6uXLrLXSrSJQ=; b=OvR9LjxiJb+gq0
	Kcdmu980Z1msx7uYDei5AU/tvbpDUTJ2cTouGO1t5TufxQFtq+wq1xWI8xCg4TCcGLwLNFA+a2U9a
	N/erOhNjoIN515V5mAijwL7SPQ81FRnne5BEfry/D6D/vyx1pLP214riVCLbhf7Iv4t51y2ymqlGH
	Z737d5v9A3a2RjnMU/6j2Kw5dCYX1UhtYOoONZhTTtZWzX7xe2u31PsgX9HSLmXT9NbvowgOvEUvX
	RcBQH7sa5kaSwpEQ8nZseU3Ze/US0V2Y3BuIEzelCZc7Bq6YVAtOgW9hZ++GU1fz2hr2D2ASJwcSB
	eQFlfv4dbJUULBU/JQYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhHDv-0001mJ-UU; Fri, 05 Jun 2020 18:37:47 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhHDs-0001le-Pj
 for kexec@lists.infradead.org; Fri, 05 Jun 2020 18:37:46 +0000
Received: from pps.filterd (m0098416.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 055IW5Gv123119; Fri, 5 Jun 2020 14:37:27 -0400
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0b-001b2d01.pphosted.com with ESMTP id 31f9dfg0s5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 05 Jun 2020 14:37:27 -0400
Received: from m0098416.ppops.net (m0098416.ppops.net [127.0.0.1])
 by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 055IZdZb142400;
 Fri, 5 Jun 2020 14:37:26 -0400
Received: from ppma03fra.de.ibm.com (6b.4a.5195.ip4.static.sl-reverse.com
 [149.81.74.107])
 by mx0b-001b2d01.pphosted.com with ESMTP id 31f9dfg0rc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 05 Jun 2020 14:37:26 -0400
Received: from pps.filterd (ppma03fra.de.ibm.com [127.0.0.1])
 by ppma03fra.de.ibm.com (8.16.0.42/8.16.0.42) with SMTP id 055IZoGE002136;
 Fri, 5 Jun 2020 18:37:24 GMT
Received: from b06cxnps4074.portsmouth.uk.ibm.com
 (d06relay11.portsmouth.uk.ibm.com [9.149.109.196])
 by ppma03fra.de.ibm.com with ESMTP id 31bf47d60d-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 05 Jun 2020 18:37:24 +0000
Received: from d06av22.portsmouth.uk.ibm.com (d06av22.portsmouth.uk.ibm.com
 [9.149.105.58])
 by b06cxnps4074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 055IbLk263242476
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 5 Jun 2020 18:37:21 GMT
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id D0E074C044;
 Fri,  5 Jun 2020 18:37:21 +0000 (GMT)
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id CDBF64C04A;
 Fri,  5 Jun 2020 18:37:18 +0000 (GMT)
Received: from localhost.localdomain (unknown [9.85.181.45])
 by d06av22.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Fri,  5 Jun 2020 18:37:18 +0000 (GMT)
Message-ID: <1591382238.5816.27.camel@linux.ibm.com>
Subject: Re: [PATCH 0/3] fs: reduce export usage of kerne_read*() calls
From: Mimi Zohar <zohar@linux.ibm.com>
To: Scott Branden <scott.branden@broadcom.com>, Kees Cook
 <keescook@chromium.org>
Date: Fri, 05 Jun 2020 14:37:18 -0400
In-Reply-To: <1c68c0c7-1b0a-dfec-0e50-1b65eedc3dc7@broadcom.com>
References: <20200513152108.25669-1-mcgrof@kernel.org>
 <20200513181736.GA24342@infradead.org>
 <20200515212933.GD11244@42.do-not-panic.com>
 <20200518062255.GB15641@infradead.org>
 <1589805462.5111.107.camel@linux.ibm.com>
 <7525ca03-def7-dfe2-80a9-25270cb0ae05@broadcom.com>
 <202005221551.5CA1372@keescook>
 <c48a80f5-a09c-6747-3db8-be23a260a0cb@broadcom.com>
 <1590288736.5111.431.camel@linux.ibm.com>
 <1c68c0c7-1b0a-dfec-0e50-1b65eedc3dc7@broadcom.com>
X-Mailer: Evolution 3.20.5 (3.20.5-1.fc24) 
Mime-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-06-05_05:2020-06-04,
 2020-06-05 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 spamscore=0
 adultscore=0 impostorscore=0 phishscore=0 malwarescore=0 clxscore=1011
 suspectscore=0 cotscore=-2147483648 priorityscore=1501 mlxlogscore=984
 lowpriorityscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2006050134
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_113744_955704_554725C1 
X-CRM114-Status: GOOD (  15.81  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.158.5 listed in wl.mailspike.net]
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
Cc: rafael@kernel.org, dhowells@redhat.com,
 linux-security-module@vger.kernel.org, paul@paul-moore.com,
 nayna@linux.ibm.com, jmorris@namei.org, Christoph Hellwig <hch@infradead.org>,
 geert@linux-m68k.org, dan.carpenter@oracle.com, selinux@vger.kernel.org,
 viro@zeniv.linux.org.uk, skhan@linuxfoundation.org, eparis@parisplace.org,
 tglx@linutronix.de, gregkh@linuxfoundation.org, stephen.smalley.work@gmail.com,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 Luis Chamberlain <mcgrof@kernel.org>, ebiederm@xmission.com, jeyu@kernel.org,
 linux-fsdevel@vger.kernel.org, linux-integrity@vger.kernel.org,
 bauerman@linux.ibm.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

T24gRnJpLCAyMDIwLTA2LTA1IGF0IDExOjE1IC0wNzAwLCBTY290dCBCcmFuZGVuIHdyb3RlOgo+
IEhpIE1pbWksCj4gCj4gT24gMjAyMC0wNS0yMyA3OjUyIHAubS4sIE1pbWkgWm9oYXIgd3JvdGU6
Cj4gPiBTY290dCwgdGhlIGNoYW5nZSBzaG91bGQgYmUgc3RyYWlnaHQgZm9yd2FyZC4gwqBUaGUg
YWRkaXRpb25hbCBwYXRjaAo+ID4gbmVlZHMgdG86Cj4gPiAtIGRlZmluZSBhIG5ldyBrZXJuZWxf
cmVhZF9maWxlX2lkIGVudW1lcmF0aW9uLCBsaWtlCj4gPiBGSVJNV0FSRV9QQVJUSUFMX1JFQUQu
Cj4gPiAtIEN1cnJlbnRseSBpbWFfcmVhZF9maWxlKCkgaGFzIGEgY29tbWVudCBhYm91dCBwcmUt
YWxsb2NhdGVkIGZpcm13YXJlCj4gPiBidWZmZXJzLiDCoFVwZGF0ZSBpbWFfcmVhZF9maWxlKCkg
dG8gY2FsbCBwcm9jZXNzX21lYXN1cmVtZW50KCkgZm9yIHRoZQo+ID4gbmV3IGVudW1lcmF0aW9u
IEZJUk1XQVJFX1BBUlRJQUxfUkVBRCBhbmQgdXBkYXRlIGltYV9wb3N0X3JlYWRfZmlsZSgpCj4g
PiB0byByZXR1cm4gaW1tZWRpYXRlbHkuCj4gU2hvdWxkIHRoaXMgYmUgd2hhdCBpcyBpbiBpbWFf
cmVhZF9maWxlPwo+IHsKPiAgwqDCoMKgIGVudW0gaW1hX2hvb2tzIGZ1bmM7Cj4gIMKgwqDCoCB1
MzIgc2VjaWQ7CgpQbGVhc2UgZG9uJ3QgcmVtb3ZlIHRoZSBleGlzdGluZyBjb21tZW50LgoKPiAg
wqDCoMKgIGlmIChyZWFkX2lkICE9IFJFQURJTkdfRklSTVdBUkVfUEFSVElBTF9SRUFEKQo+ICDC
oMKgwqAgwqDCoMKgIHJldHVybiAwOwo+IAo+ICDCoMKgwqAgaWYgKCFmaWxlKSB7IC8qIHNob3Vs
ZCBuZXZlciBoYXBwZW4gKi8KPiAgwqDCoMKgIMKgwqDCoCBpZiAoaW1hX2FwcHJhaXNlICYgSU1B
X0FQUFJBSVNFX0VORk9SQ0UpCj4gIMKgwqDCoCDCoMKgwqAgwqDCoMKgIHJldHVybiAtRUFDQ0VT
Owo+ICDCoMKgwqAgwqDCoMKgIHJldHVybiAwOwo+ICDCoMKgwqAgfQoKVGhpcyBjaGVja3MgZm9y
IGFueSBJTUEgYXBwcmFpc2UgcnVsZS4gwqBZb3Ugd2FudCB0byBlbmZvcmNlIGZpcm13YXJlCnNp
Z25hdHVyZSBjaGVja2luZyBvbmx5IGlmIHRoZXJlIGlzIGEgZmlybXdhcmUgYXBwcmFpc2UgcnVs
ZS4gwqBSZWZlcgp0byBpbWFfcG9zdF9yZWFkX2ZpbGUoKS4KCj4gIMKgwqDCoCBzZWN1cml0eV90
YXNrX2dldHNlY2lkKGN1cnJlbnQsICZzZWNpZCk7Cj4gIMKgwqDCoCByZXR1cm4gcHJvY2Vzc19t
ZWFzdXJlbWVudChmaWxlLCBjdXJyZW50X2NyZWQoKSwgc2VjaWQsIE5VTEwsCj4gIMKgwqDCoCDC
oMKgwqAgwqDCoMKgIMKgwqDCoCDCoMKgIDAsIE1BWV9SRUFELCBGSUxFX0NIRUNLKTsKClRoZSBy
ZWFkX2lkbWFwIGVudW1lcmF0aW9uIHNob3VsZCBiZSB1cGRhdGVkIHNpbWlsYXIgdG8gdGhlIG90
aGVyCmZpcm13YXJlLiDCoEtlZXAgdGhlIGNvZGUgZ2VuZXJpYy4gwqBSZWZlciB0byBpbWFfcG9z
dF9yZWFkX2ZpbGUoKS4KwqBmdW5jIHdpbGwgYmUgZGVmaW5lZCBhcyBGSVJNV0FSRV9DSEVDSy4K
CnRoYW5rcywKCk1pbWkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmtleGVjIG1haWxpbmcgbGlzdAprZXhlY0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8va2V4ZWMK
