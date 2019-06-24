Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF04D51D16
	for <lists+kexec@lfdr.de>; Mon, 24 Jun 2019 23:27:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Mime-Version:References:
	In-Reply-To:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MRJFi/8k8dFRzudXs5jvoTJrIi5QHIJ/rSK7Ex+OoXM=; b=MJeqnJ2i0tSk77
	tQt7ncoiw3BtjDnVbTv3i+xuyn+3YSejcTPOC83AIdNe8FpaoLowHTgz8rgPzRj/AxBJd7MzWbOIH
	gDOXYsymucCmpI+WL8q55jHmCnq4iji8KU4r+FvnTC0n3VMT8TlH5vmcCzZcDKomrFTgUHOAHetPP
	LWgT3mPW8b09YFEqdO+enmtW/CyLiopbvmQuSTZyc6RBM6Q8HzH2sb0NgIh1dRK543epBIRbpuCVI
	pWZQZKl4w3bhLwrMcwi8PuRx89N2E5xXjn5QTfpkmgdCXBh4o9YqeiCrEL91/sLzL98OurcS+4Iqo
	63MkgOTNT5Pzytv253yQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfWVG-0008Sm-MD; Mon, 24 Jun 2019 21:27:54 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfWVD-0008RS-Cd
 for kexec@lists.infradead.org; Mon, 24 Jun 2019 21:27:52 +0000
Received: from pps.filterd (m0098419.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5OLNjjZ117287
 for <kexec@lists.infradead.org>; Mon, 24 Jun 2019 17:27:46 -0400
Received: from e06smtp02.uk.ibm.com (e06smtp02.uk.ibm.com [195.75.94.98])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2tb6arg9jk-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <kexec@lists.infradead.org>; Mon, 24 Jun 2019 17:27:46 -0400
Received: from localhost
 by e06smtp02.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <kexec@lists.infradead.org> from <zohar@linux.ibm.com>;
 Mon, 24 Jun 2019 22:27:44 +0100
Received: from b06cxnps4076.portsmouth.uk.ibm.com (9.149.109.198)
 by e06smtp02.uk.ibm.com (192.168.101.132) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Mon, 24 Jun 2019 22:27:40 +0100
Received: from d06av23.portsmouth.uk.ibm.com (d06av23.portsmouth.uk.ibm.com
 [9.149.105.59])
 by b06cxnps4076.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x5OLRdCl50462832
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 24 Jun 2019 21:27:39 GMT
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 70859A4057;
 Mon, 24 Jun 2019 21:27:39 +0000 (GMT)
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 68810A4040;
 Mon, 24 Jun 2019 21:27:38 +0000 (GMT)
Received: from dhcp-9-31-103-88.watson.ibm.com (unknown [9.31.103.88])
 by d06av23.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Mon, 24 Jun 2019 21:27:38 +0000 (GMT)
Subject: Re: [PATCH V31 07/25] kexec_file: Restrict at runtime if the kernel
 is locked down
From: Mimi Zohar <zohar@linux.ibm.com>
To: Matthew Garrett <mjg59@google.com>, Dave Young <dyoung@redhat.com>
Date: Mon, 24 Jun 2019 17:27:37 -0400
In-Reply-To: <CACdnJusPtYLdg7ZPhBo=Y5EsBz6B+5M2zYscBrLcc89oNnPkdQ@mail.gmail.com>
References: <20190326182742.16950-1-matthewgarrett@google.com>
 <20190326182742.16950-8-matthewgarrett@google.com>
 <20190621064340.GB4528@localhost.localdomain>
 <CACdnJut=J1YTpM4s6g5XWCEs+=X0Jvf8otfMg+w=_oqSZmf01Q@mail.gmail.com>
 <20190624015206.GB2976@dhcp-128-65.nay.redhat.com>
 <CACdnJusPtYLdg7ZPhBo=Y5EsBz6B+5M2zYscBrLcc89oNnPkdQ@mail.gmail.com>
X-Mailer: Evolution 3.20.5 (3.20.5-1.fc24) 
Mime-Version: 1.0
X-TM-AS-GCONF: 00
x-cbid: 19062421-0008-0000-0000-000002F6A77A
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19062421-0009-0000-0000-00002263D4EA
Message-Id: <1561411657.4340.70.camel@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-24_14:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=3 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1906240169
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_142751_554426_7113257F 
X-CRM114-Status: GOOD (  24.54  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Jiri Bohac <jbohac@suse.cz>, Linux API <linux-api@vger.kernel.org>,
 kexec@lists.infradead.org, James Morris <jmorris@namei.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 David Howells <dhowells@redhat.com>,
 LSM List <linux-security-module@vger.kernel.org>,
 Andy Lutomirski <luto@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

SGkgTWF0dGhldywKCk9uIE1vbiwgMjAxOS0wNi0yNCBhdCAxNDowNiAtMDcwMCwgTWF0dGhldyBH
YXJyZXR0IHdyb3RlOgo+IE9uIFN1biwgSnVuIDIzLCAyMDE5IGF0IDY6NTIgUE0gRGF2ZSBZb3Vu
ZyA8ZHlvdW5nQHJlZGhhdC5jb20+IHdyb3RlOgo+ID4KPiA+IE9uIDA2LzIxLzE5IGF0IDAxOjE4
cG0sIE1hdHRoZXcgR2FycmV0dCB3cm90ZToKPiA+ID4gSSBkb24ndCB0aGluayBzbyAtIHdlIHdh
bnQgaXQgdG8gYmUgcG9zc2libGUgdG8gbG9hZCBpbWFnZXMgaWYgdGhleQo+ID4gPiBoYXZlIGEg
dmFsaWQgc2lnbmF0dXJlLgo+ID4KPiA+IEkga25vdyBpdCB3b3JrcyBsaWtlIHRoaXMgd2F5IGJl
Y2F1c2Ugb2YgdGhlIHByZXZpb3VzIHBhdGNoLiAgQnV0IGZyb20KPiA+IHRoZSBwYXRjaCBsb2cg
IldoZW4gS0VYRUNfU0lHIGlzIG5vdCBlbmFibGVkLCBrZXJuZWwgc2hvdWxkIG5vdCBsb2FkCj4g
PiBpbWFnZXMiLCBpdCBpcyBzaW1wbGUgdG8gY2hlY2sgaXQgZWFybHkgZm9yICFJU19FTkFCTEVE
KENPTkZJR19LRVhFQ19TSUcpICYmCj4gPiBrZXJuZWxfaXNfbG9ja2VkX2Rvd24ocmVhc29uLCBM
T0NLRE9XTl9JTlRFR1JJVFkpICBpbnN0ZWFkIG9mIGRlcGVuZGluZwo+ID4gb24gdGhlIGxhdGUg
Y29kZSB0byB2ZXJpZnkgc2lnbmF0dXJlLiAgSW4gdGhhdCB3YXksIGVhc2llciB0bwo+ID4gdW5k
ZXJzdGFuZCB0aGUgbG9naWMsIG5vPwo+IAo+IEJ1dCB0aGF0IGNvbWJpbmF0aW9uIGRvZXNuJ3Qg
ZW5mb3JjZSBzaWduYXR1cmUgdmFsaWRhdGlvbj8gV2UgY2FuJ3QKPiBkZXBlbmQgb24gIUlTX0VO
QUJMRUQoQ09ORklHX0tFWEVDX1NJR19GT1JDRSkgYmVjYXVzZSB0aGVuIGl0J2xsCj4gZW5mb3Jj
ZSBzaWduYXR1cmUgdmFsaWRhdGlvbiBldmVuIGlmIGxvY2tkb3duIGlzIGRpc2FibGVkLgoKSSBh
Z3JlZSB3aXRoIERhdmUuIMKgVGhlcmUgc2hvdWxkIGJlIGEgc3R1YiBsb2NrZG93biBmdW5jdGlv
biB0bwpwcmV2ZW50IGVuZm9yY2luZyBsb2NrZG93biB3aGVuIGl0IGlzbid0IGVuYWJsZWQuCgpN
aW1pCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Ka2V4
ZWMgbWFpbGluZyBsaXN0CmtleGVjQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9rZXhlYwo=
