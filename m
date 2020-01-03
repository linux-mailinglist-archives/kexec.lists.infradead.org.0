Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55E5F12FE47
	for <lists+kexec@lfdr.de>; Fri,  3 Jan 2020 22:20:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AYb1n0BpTZqVVMobTs3bRfG9XgpB+vYU774Sjh26o80=; b=qDjDYwMTk/3/MZ
	TgvfwbNGFlChL3cG6MnGaL2jR0ILihQvN//BY76LDnHJtcZvchJtvlKKbz3GcCgp+Z49vtEGJEKn3
	/cz8GmX/gn7+yxReA50IB8x972a3GT9ZNCyTrdf8e8ASGo9CZacGyG90rUL7SuyM0hCoeSa6FJIKE
	Iz0iA6nxicaz0zT/kdYmAuXFJDcUECqjoXh1wIfMKI5jCBvgI/YYAQ+ZZnb0g5XZqJCUskjjKKL+t
	bj34NI9VyMsV38CpZihhb2eG/x60zYYSP7QWcNAE3+9ZG+qXqUQ1F8D6apdiGzqR3VK+TUPkL9lJp
	+G6hUSRsL6wx5zLtkuZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inUMn-0007km-4f; Fri, 03 Jan 2020 21:20:21 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inULy-0005h4-Dk
 for kexec@lists.infradead.org; Fri, 03 Jan 2020 21:19:32 +0000
Received: from pps.filterd (m0098419.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 003LHLJk032182; Fri, 3 Jan 2020 16:19:26 -0500
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2xa48memp3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 03 Jan 2020 16:19:26 -0500
Received: from m0098419.ppops.net (m0098419.ppops.net [127.0.0.1])
 by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 003LIFTg033872;
 Fri, 3 Jan 2020 16:19:25 -0500
Received: from ppma05wdc.us.ibm.com (1b.90.2fa9.ip4.static.sl-reverse.com
 [169.47.144.27])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2xa48memns-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 03 Jan 2020 16:19:25 -0500
Received: from pps.filterd (ppma05wdc.us.ibm.com [127.0.0.1])
 by ppma05wdc.us.ibm.com (8.16.0.27/8.16.0.27) with SMTP id 003LFpRW006513;
 Fri, 3 Jan 2020 21:19:25 GMT
Received: from b01cxnp23032.gho.pok.ibm.com (b01cxnp23032.gho.pok.ibm.com
 [9.57.198.27]) by ppma05wdc.us.ibm.com with ESMTP id 2x5xp6kxhh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 03 Jan 2020 21:19:25 +0000
Received: from b01ledav002.gho.pok.ibm.com (b01ledav002.gho.pok.ibm.com
 [9.57.199.107])
 by b01cxnp23032.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 003LJO3q49152456
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 3 Jan 2020 21:19:24 GMT
Received: from b01ledav002.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 994FC12405B;
 Fri,  3 Jan 2020 21:19:24 +0000 (GMT)
Received: from b01ledav002.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 25243124052;
 Fri,  3 Jan 2020 21:19:24 +0000 (GMT)
Received: from [9.145.178.59] (unknown [9.145.178.59])
 by b01ledav002.gho.pok.ibm.com (Postfix) with ESMTPS;
 Fri,  3 Jan 2020 21:19:23 +0000 (GMT)
Subject: Re: [PATCH] makedumpfile/s390: Add get_kaslr_offset() for s390x
To: =?UTF-8?B?SEFHSU8gS0FaVUhJVE8o6JCp5bC+IOS4gOS7gSk=?= <k-hagio-ab@nec.com>,
 lijiang <lijiang@redhat.com>
References: <20191203222725.64734-1-zaslonko@linux.ibm.com>
 <4AE2DC15AC0B8543882A74EA0D43DBEC03597AB9@BPXM09GP.gisp.nec.co.jp>
 <323f61d4-6aab-a0b4-faa3-e41756fb9913@linux.ibm.com>
 <4AE2DC15AC0B8543882A74EA0D43DBEC03597F4E@BPXM09GP.gisp.nec.co.jp>
 <8fd807f1-c296-1a34-e42a-a102df62f3a0@linux.ibm.com>
 <4AE2DC15AC0B8543882A74EA0D43DBEC03598540@BPXM09GP.gisp.nec.co.jp>
 <726b8852-77af-b440-99b2-6b5a7b05e674@redhat.com>
 <2aa868b8-83f4-cb23-9acf-178a9ab8144a@redhat.com>
 <TY2PR01MB5210EBE26FC1603B3E7FF491DD2A0@TY2PR01MB5210.jpnprd01.prod.outlook.com>
 <ecaa7f62-d58f-080d-27de-176b3d592a11@redhat.com>
 <TY2PR01MB5210EC16730BC6D382D5E543DD230@TY2PR01MB5210.jpnprd01.prod.outlook.com>
From: Zaslonko Mikhail <zaslonko@linux.ibm.com>
Message-ID: <3e5e68a2-edfe-6545-db97-277d5be36f8a@linux.ibm.com>
Date: Fri, 3 Jan 2020 22:19:22 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <TY2PR01MB5210EC16730BC6D382D5E543DD230@TY2PR01MB5210.jpnprd01.prod.outlook.com>
Content-Language: en-US
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2020-01-03_06:2020-01-02,2020-01-03 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0
 malwarescore=0 spamscore=0 mlxscore=0 suspectscore=0 clxscore=1011
 priorityscore=1501 lowpriorityscore=0 adultscore=0 phishscore=0
 bulkscore=0 mlxlogscore=999 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-1910280000 definitions=main-2001030193
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_131930_658785_2AEB3C5A 
X-CRM114-Status: GOOD (  14.05  )
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
Cc: "kexec@lists.infradead.org" <kexec@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

SGkgS2F6dSwKClNvcnJ5LCBJIGRpZCd0IGhhdmUgYSBjaGFuY2UgdG8gdHJ5IHlvdXIgcGF0Y2gg
eWV0LiAKSSB3aWxsIHVwZGF0ZSBtaW5lIG5leHQgd2Vlay4KClRoYW5rcywKTWlraGFpbAoKCk9u
IDAzLjAxLjIwMjAgMjE6NTUsIEhBR0lPIEtBWlVISVRPKOiQqeWwviDkuIDku4EpIHdyb3RlOgo+
IEhpIExpYW5ibywgTWlraGFpbCwKPiAKPj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPj4+
Pgo+Pj4+IEluIGFkZGl0aW9uLCB0aGUgYWJvdmUgY29kZSBjb25mdXNlZCBtZSwgaXQgd2lsbCBh
bHdheXMgcmV0dXJuIDAgb24gczM5MChwbGVhc2UgcmVmZXIgdG8gbXkgbG9ncykuCj4+Pgo+Pj4g
VGhlIGFpbSBvZiBnZXRfa2FzbHJfb2Zmc2V0KCkgaGVyZSBpcyBvbmx5IHNldHRpbmcgaW5mby0+
a2FzbHJfb2Zmc2V0IHRvIHRoZSB2YWx1ZQo+Pj4gZnJvbSB2bWNvcmVpbmZvIGZvciB0aGUgU1lN
Qk9MX0lOSVQoKSBtYWNyby4KPj4+IChnZXRfa2FzbHJfb2Zmc2V0KCkgcmV0dXJucyB0aGUga2Fz
bHIgb2Zmc2V0IGluIHRoZSByZXNvbHZlX2NvbmZpZ19lbnRyeSgpLikKPj4+Cj4+IFRoYW5rcyBm
b3IgeW91ciBleHBsYW5hdGlvbiwgS2F6dS4KPj4KPj4+IEJ1dCB5ZWFoLCB0aGUgZ2V0X2thc2xy
X29mZnNldChTWU1CT0woX3N0ZXh0KSkgaXMgY29uZnVzaW5nIGFuZCBub3QgZ29vZC4KPj4+IFBh
c3NpbmcgMCBtaWdodCBiZSBhIGJpdCBiZXR0ZXIuLj8KPj4+Cj4+IFllcywgbG9va3MgZ29vZCB0
byBtZS4KPiAKPiBPSywgSSBwdXNoZWQgYW4gYWRkaXRpb25hbCBwYXRjaCBmaXhpbmcgaXQgdG8g
dGhlIHRlc3QgYnJhbmNoOgo+IGh0dHBzOi8vZ2l0aHViLmNvbS9rLWhhZ2lvL21ha2VkdW1wZmls
ZS90cmVlL2FkZC1nZXRfa2FzbHJfb2Zmc2V0X2dlbmVyYWwKPiBUaGFua3MgTGlhbmJvIGZvciBw
b2ludGluZyBpdCBvdXQuCj4gCj4gTWlraGFpbCwgaWYgeW91IHVwZGF0ZSB5b3VyIHBhdGNoIG9u
IHRvcCBvZiB0aGUgdHJlZSBhYm92ZSwKPiBJJ2xsIG1lcmdlIGl0IHVwc3RyZWFtLgo+IAo+IFRo
YW5rcywKPiBLYXp1Cj4gCj4gUC5TLiBNeSBlbWFpbCBhZGRyZXNzIGhhcyBiZWVuIGNoYW5nZWQg
dG8gay1oYWdpby1hYkBuZWMuY29tLgo+IFBsZWFzZSBzZW5kIGVtYWlsIHRvIHRoaXMgYWRkcmVz
cyBpbiB0aGUgZnV0dXJlLiBUaGFua3MuCj4gKFVnaCwgaXQgc2VlbXMgSSBjYW5ub3QgcmVtb3Zl
IG15IGthbmppIG5hbWUgaW4gdGhlIEZyb206IGZpZWxkLi4pCj4gCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwprZXhlYyBtYWlsaW5nIGxpc3QKa2V4ZWNA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2tleGVjCg==
